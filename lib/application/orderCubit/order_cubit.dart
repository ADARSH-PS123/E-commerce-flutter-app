import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/iapp.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/iapp/cartEntity.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

@injectable
class OrderCubit extends Cubit<OrderState> {
  final IAppRepo _appRepo;
  final Iauth _iauth;
  late StreamSubscription userStatusSubscription;
  OrderCubit(this._appRepo, this._iauth) : super(OrderState.initial());

  void getSignedUserInfo() {
    log('get signedUserInfo ');
    emit(state.copyWith(isLoading: true));
    userStatusSubscription = _iauth.getSignedUser().listen((option) {
      option.fold(
          () => emit(state.copyWith(
              userId: UniqueId.fromBackend(''), isLoading: false)),
          (user) => emit(state.copyWith(userId: user.id, isLoading: false)));
    });
  }
  getOrderHistoryProduct()async{
    log('api called');
        if (state.userId.hasData()) {
            emit(state.copyWith(isLoading: true));

            final result = await _appRepo.getOrderHistoryProduct(userId: state.userId);
            final out = result.fold(
                (l) => state.copyWith(
                    optionSuccessFailure: Some(Left(l)),
                    isError: true,
                    isLoaded: true,
                    isLoading: false),
                (prod) => state.copyWith(
                    optionSuccessFailure: const Some(Right(unit)),
                    cartProducts: prod,
                    isLoading: false,
                    isLoaded: true,//avoid api firebase call when widget is being rebuild
                    isError: false));
            emit(out);
          } 
       
          else  {
     
            emit(
              state.copyWith(
                  optionSuccessFailure: Some(left(AppFailure.unexpected())),
                  isError: true),
            );
          }
  }

 
  @override
  Future<void> close() {
    userStatusSubscription.cancel();
    return super.close();
  }
  @override
  void onChange(Change<OrderState> change) {
  //log(change.toString());
    super.onChange(change);
  }
}
