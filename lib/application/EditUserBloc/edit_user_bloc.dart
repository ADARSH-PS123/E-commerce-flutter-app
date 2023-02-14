import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/Iauth/address.dart';
import 'package:ecommerce/domain/Iauth/user.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/iapp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_user_bloc.freezed.dart';
part 'edit_user_event.dart';
part 'edit_user_state.dart';

@injectable
class EditUserBloc extends Bloc<EditUserEvent, EditUserState> {
final MainBloc _mainBloc;
  final IAppRepo _iAppRepo;
 late StreamSubscription userStatusSubscription;
final Iauth _iauth;
  EditUserBloc( this._iAppRepo,this._iauth,this._mainBloc) : super(EditUserState.initial()) {
 
     
        emit(state.copyWith(isLoading: true));
  userStatusSubscription =   _mainBloc.stream.listen((MainState _mainState) {
      final result = _mainState.maybeMap(
        orElse: () {
          return EditUserState.initial();
        },
        loading: (value) {
          return state.copyWith(isLoading: true);
        },
        authenticated: (user) {
          return  state.copyWith(
                isLoading: false,
                user: user.appuser,
                pincode: user.appuser.fullAddress.pincode,
                userAddress: user.appuser.fullAddress.userAddress,
                userName: user.appuser.userName);
        },
        notAuthenticated: (value) {
        return  state.copyWith(
                isLoading: false,
                optionSuccessFailure:
                    const Some(Left(AppFailure.insufficientPermissions())),
                isError: true);
        },
      );
      emit(result);
    });

    on<EditUserEvent>((event, emit) async {
      if (event is _EditUserEventUserNameChanged) {
        final userName = UserName(event.userName);

        emit(state.copyWith(userName: userName));
      } else if (event is _EditUserEventUserAddressChanged) {
        emit(state.copyWith(userAddress: UserAddress(event.userAddress)));
      } else if (event is _EditUserEventUserPincodeChanged) {
        emit(state.copyWith(pincode: PinCode(event.pincode)));
      }  else if (event is _EditUserEventEditUserInfo) {
        emit(state.copyWith(isLoading: true));
        final appUser = AppUser(
            id: state.user.id,
            userName: state.userName,
            emailAddress: state.user.emailAddress,
            fullAddress: FullUserAddress(
                pincode: state.pincode,
                userAddress: state.userAddress,
                uniqueId: state.user.fullAddress.uniqueId),
            profilePhoto: state.user.profilePhoto,
            addresses: state.user.addresses);
        final result = await _iAppRepo.editUserData(user: appUser);
        final out = result.fold(
            (l) => state.copyWith(
                optionSuccessFailure: Some(Left(l)),
                isError: true,
                isLoading: false),
            (r) => state.copyWith(
                isError: false,
                isLoading: false,
                optionSuccessFailure: Some(Right(r))));
        emit(out);
     
      }
      if (event is _EditUserEventEditProfilePhoto) {
        emit(state.copyWith(isLoading: true));
        final result = await _iAppRepo.editProfilePicture(
            destination: state.user.id.getOrCrash(), isDeletion: false);
        final out = result.fold(
            (l) => state.copyWith(
                optionSuccessFailure: Some(Left(l)),
                isLoading: false,
                isError: true),
            (appUser) => state.copyWith(
                isLoading: false,
                isError: false,
                user: appUser,
                optionSuccessFailure:const Some(Right(unit))));
                emit(out);
      }
      if (event is _EditUserEventRemoveProfilePhoto) {
        emit(state.copyWith(isLoading: true));
        final result = await _iAppRepo.editProfilePicture(
            destination: state.user.id.getOrCrash(), isDeletion: true);
        final out = result.fold(
            (l) => state.copyWith(
                optionSuccessFailure: Some(Left(l)),
                isLoading: false,
                isError: true),
            (appUser) => state.copyWith(
                isLoading: false,
                isError: false,
                user: appUser,
                optionSuccessFailure:const Some(Right(unit))));
                emit(out);
      }
    }, transformer: sequential());
  }
}
