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

  final IAppRepo _iAppRepo;
final Iauth _iauth;
  EditUserBloc( this._iAppRepo,this._iauth) : super(EditUserState.initial()) {
    on<EditUserEvent>((event, emit) async {
      if (event is _EditUserEventUserNameChanged) {
        final userName = UserName(event.userName);

        emit(state.copyWith(userName: userName));
      } else if (event is _EditUserEventUserAddressChanged) {
        emit(state.copyWith(userAddress: UserAddress(event.userAddress)));
      } else if (event is _EditUserEventUserPincodeChanged) {
        emit(state.copyWith(pincode: PinCode(event.pincode)));
      } else if (event is _EditUserEventGetSignedUser) {
         emit(state.copyWith(isLoading: true));
  await emit.forEach(
          _iauth.getSignedUser(),
          onData: (Option<AppUser> data) {
            return data.fold(
                () => state.copyWith(
                isLoading: false,
                optionSuccessFailure:
                    const Some(Left(AppFailure.insufficientPermissions())),
                isError: true),
                (user) =>  state.copyWith(
                isLoading: false,
                user: user,
                pincode: user.fullAddress.pincode,
                userAddress: user.fullAddress.userAddress,
                userName: user.userName));
          },
        );

      




      } else if (event is _EditUserEventEditUserInfo) {
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
        add(const EditUserEvent.getSignedUser());
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
