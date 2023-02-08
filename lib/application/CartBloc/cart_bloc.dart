import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/Iauth/user.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/iapp.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/iapp/cartEntity.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final IAppRepo _appRepo;
final Iauth _auth;

  CartBloc(this._appRepo, this._auth) : super(CartState.initial()) {
    on<CartEvent>(
      (event, emit) async {



        if (event is _CartEventGetUserId) {
      
 emit(state.copyWith(isLoading: true));
             await emit.forEach(_auth.getSignedUser(),onData: (Option<AppUser> data){
          return    data.fold(() => state.copyWith(
                isLoading: false,
                isError :true,optionSuccessFailure: Some(Left(AppFailure.insufficientPermissions()))
              ), (a) => state.copyWith(isLoading: false,userId: a.id,isError: false));
             },);

      

        } else if (event is _CartEventGetCart) {
          if (state.userId.hasData()) {
            emit(state.copyWith(isLoading: true));

            final result = await _appRepo.getCartProduct(userId: state.userId);
            final out = result.fold(
                (l) => state.copyWith(
                    optionSuccessFailure: Some(Left(l)),
                    isError: true,
                    isLoading: false),
                (products) => state.copyWith(
                    optionSuccessFailure: Some(Right(unit)),
                    cartProducts: products,
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
        if (event is _CartEventSetCart) {
          if (state.userId.hasData()) {
            emit(state.copyWith(isLoading: true));
            final result = await _appRepo.setCartProducts(
              appUserId: state.userId,
              productId: event.productId,
            );
            final out = result.fold(
                (l) => state.copyWith(
                    optionSuccessFailure: Some(Left(l)),
                    isError: true,
                    isLoading: false),
                (r) => state.copyWith(
                    optionSuccessFailure: Some(Right(r)), isLoading: false));

            emit(out);
            add(const CartEvent.getCArtProducts());
          } else {
            emit(
              state.copyWith(
                  optionSuccessFailure: Some(left(AppFailure.unexpected())),
                  isError: true),
            );
          }
        } else if (event is _CartEventRemoveCart) {
          if (state.userId.hasData()) {
            emit(state.copyWith(isLoading: true));
            final result = await _appRepo.removeFavouriteCartProducts(
                collectionName: 'Cart',
                appUserId: state.userId,
                productId: event.productId);
            final out = result.fold(
                (l) => state.copyWith(
                    optionSuccessFailure: Some(Left(l)),
                    isError: true,
                    isLoading: false),
                (r) => state.copyWith(
                    optionSuccessFailure: Some(Right(r)), isLoading: false));

            emit(out);
            add(const CartEvent.getCArtProducts());
          } else {
            emit(
              state.copyWith(
                  optionSuccessFailure:
                      Some(left(const AppFailure.unexpected())),
                  isError: true),
            );
          }
        } else if (event is _CartEventCahngeQuantityCart) {
          if (state.userId.hasData()) {
            emit(state.copyWith(miniLoading: true));
            final result = await _appRepo.changeCartQuantity(
              productId: event.productId,
              quantity: event.quantity,
              userId: state.userId,
            );
            final out = result.fold(
                (l) => state.copyWith(
                    optionSuccessFailure: Some(Left(l)), miniLoading: false),
                (quantity) => state.copyWith(
                    optionSuccessFailure: const Some(Right(unit)),
                    miniLoading: false));
            emit(out);
          } else {
            emit(
              state.copyWith(
                  optionSuccessFailure:
                      Some(left(const AppFailure.unexpected())),
                  isError: true),
            );
          }
        }
      },
      transformer: sequential()
      /*  transformer:
            sequential() */ //for sequentially excuting two events , with the help of package called concurrency
    );
  }
}
