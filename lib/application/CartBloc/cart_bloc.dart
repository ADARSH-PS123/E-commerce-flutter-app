import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:collection/collection.dart';
import 'package:ecommerce/application/main_bloc/main_bloc.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/Iauth/user.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/iapp.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/iapp/cartEntity.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final IAppRepo _appRepo;
  final MainBloc _mainBloc;
late StreamSubscription userStatusSubscription;
  CartBloc(this._appRepo,this._mainBloc) : super(CartState.initial()) {
         emit(state.copyWith(isLoading: true));
  userStatusSubscription =   _mainBloc.stream.listen((MainState _mainState) {
      final result = _mainState.maybeMap(
        orElse: () {
          return CartState.initial();
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

    on<CartEvent>((event, emit) async {
       if (event is _CartEventGetCart) {
       
        if (state.userId.hasData()) {
          emit(state.copyWith(isLoading: true));

          final result = await _appRepo.getCartProduct(userId: state.userId);
          final out = result.fold(
              (l) => state.copyWith(
                  optionSuccessFailure: Some(Left(l)),
                  isError: true,
                  isLoading: false),
              (products) {
                final amountInPaisa =  (products
                        .map((e) =>
                            e.product.price.getOrCrash() *
                            e.quantity.getOrCrash())
                        .toList()
                        .sum*100).toInt();
                  
                 
              return  state.copyWith(
                  optionSuccessFailure: const Some(Right(unit)),
                  cartProducts: products,
                  totalPrice:CountValueObject(amountInPaisa),
                  isLoading: false,
                  isCartLoaded: true,
                  isError: false);
              });
          emit(out);
        } else {
          log('no user id');
          emit(
            state.copyWith(
              
                optionSuccessFailure: Some(left(AppFailure.unexpected())),
                isCartLoaded: true,
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
                optionSuccessFailure: Some(left(const AppFailure.unexpected())),
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
                optionSuccessFailure: Some(left(const AppFailure.unexpected())),
                isError: true),
          );
        }
      } else if (event is _CartEventmoveCartProdutToOrderHistory) {
        log('migrate cart products api ');
        if (state.userId.hasData()) {
          log('yee to ');
          emit(state.copyWith(isLoading: true));
          final result = await _appRepo.moveCartProductsToOrderHistory(
              appUserId: state.userId);
          final out = result.fold(
              (l) => state.copyWith(
                  optionSuccessFailure: Some(Left(l)), isLoading: false),
              (r){
              
                return state.copyWith(
                  optionSuccessFailure: const Some(Right(unit)),
                  isLoading: false,
                  cartProducts: [],
                  isProductsMovedtoHistory: true);});
          emit(out);
          
        }
      }
    },  transformer: sequential() 
        /*  transformer:
            sequential() */ //for sequentially excuting two events , with the help of package called concurrency
        );
  }
  @override
  Future<void> close() async{
    // TODO: implement close
    await userStatusSubscription.cancel();
    return super.close();
  }
  @override
  void onTransition(Transition<CartEvent, CartState> transition) {
    // TODO: implement onTransition
   // log(transition.event.toString());
    super.onTransition(transition);
  }
  @override
  void onChange(Change<CartState> change) {
    // TODO: implement onChange
   // log(change.toString());
    super.onChange(change);
  }
}
