import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/Iauth/user.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/iapp.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favourites_bloc.freezed.dart';
part 'favourites_event.dart';
part 'favourites_state.dart';

@injectable
class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
final MainBloc _mainBloc;
  final IAppRepo _appRepo;
late StreamSubscription userStatusSubscription;
  FavouritesBloc(
    this._mainBloc,
    this._appRepo,

  ) : super(FavouritesState.initial()) {
     
     
        emit(state.copyWith(isLoading: true));
  userStatusSubscription =   _mainBloc.stream.listen((MainState _mainState) {
      final result = _mainState.maybeMap(
        orElse: () {
          return FavouritesState.initial();
        },
        loading: (value) {
          return state.copyWith(isLoading: true);
        },
        authenticated: (value) {
          return state.copyWith(isLoading: false, userId: value.appuser.id);
        },
        notAuthenticated: (value) {
          return state.copyWith(isLoading: false);
        },
      );
      emit(result);
    });
    on<FavouritesEvent>((event, emit) async {
 



  if (event is _FavouritesEventGetFavourites) {
        if (state.userId.hasData()) {
          emit(state.copyWith(isLoading: true));
          final result = await _appRepo.getFavouriteProducts(
              userId: state.userId, collectionName: 'Favourites');
          final out = result.fold(
              (l) => state.copyWith(
                  optionSuccessFailure: Some(Left(l)),
                  isError: true,
                  isLoading: true),
              (products) => state.copyWith(
                  optionSuccessFailure: Some(Right(unit)),
                  favProducts: products,
                  isLoading: false,
                  isError: false));
          emit(out);
        } else {
          print('user id  empty');
          emit(
            state.copyWith(
                optionSuccessFailure: Some(left(AppFailure.unexpected())),
                isError: true),
          );
        }
      }
      if (event is _FavouritesEventSetFavourites) {
        if (state.userId.hasData()) {
          emit(state.copyWith(isLoading: true));
          final result = await _appRepo.setFavouriteProducts(
              appUserId: state.userId,
              productId: event.productId,
              collectionName: 'Favourites');
          final out = result.fold(
              (l) => state.copyWith(
                  optionSuccessFailure: Some(Left(l)),
                  isError: true,
                  isLoading: false),
              (r) => state.copyWith(
                  optionSuccessFailure: Some(Right(r)), isLoading: false));

          emit(out);
          add(const FavouritesEvent.getFavouriteProducts());
        } else {
          emit(
            state.copyWith(
                optionSuccessFailure: Some(left(const AppFailure.unexpected())),
                isError: true),
          );
        }
      } else if (event is _FavouritesEventRemoveFavourites) {
        if (state.userId.hasData()) {
          emit(state.copyWith(miniLoading: true));
          final result = await _appRepo.removeFavouriteCartProducts(
              collectionName: 'Favourites',
              appUserId: state.userId,
              productId: event.productId);
          final out = result.fold(
              (l) => state.copyWith(
                  optionSuccessFailure: Some(Left(l)),
                  isError: true,
                  miniLoading: false),
              (r) => state.copyWith(
                  optionSuccessFailure: Some(Right(r)), miniLoading: false));

          emit(out);
          add(const FavouritesEvent.getFavouriteProducts());
        } else {
          emit(
            state.copyWith(
                optionSuccessFailure: Some(left(const AppFailure.unexpected())),
                isError: true),
          );
        }
      }
    },
        transformer:
            sequential() //for sequentially excuting two events , with the help of package called concurrency
        );
  }
  @override
  Future<void> close()async {
    // TODO: implement close
  await  userStatusSubscription.cancel();
    return super.close();
  }
}
