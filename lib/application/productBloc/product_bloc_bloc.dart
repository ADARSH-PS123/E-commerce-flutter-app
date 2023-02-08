import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/iapp.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_bloc_bloc.freezed.dart';
part 'product_bloc_event.dart';
part 'product_bloc_state.dart';

@injectable
class ProductWatcherBloc extends Bloc<ProductWacherEvent, ProductWatcherState> {
 final IAppRepo _iRepo;

  ProductWatcherBloc(this._iRepo) : super(ProductWatcherState.initial()) {
    on<_ProductWacherEventGetAllProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true));
   
      await emit.forEach(
        _iRepo.getProducts(),
        onData: (Either<AppFailure, List<Product>> either) {
          return either.fold(
              (l) => state.copyWith(
                     searchResult: [],
            fullProducts: [],
                  isLoading: false, optionSuccessFailure: Some(Left(l))), (r) {
            return state.copyWith(isLoading: false, fullProducts: r,);
          });
        },
        onError: (error, stackTrace) {
          
          return state.copyWith(optionSuccessFailure:const Some(Left(AppFailure.insufficientPermissions())));
        },
      );
    });

    on<_ProductWacherEventSearch>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final valueObject = ProductValueObject(event.searchStr);
     emit( state.copyWith(searchData: valueObject));
     
      final result = await _iRepo.searchProduct(
          serachData:state.searchData );
      final out = result.fold(
          (l) => state.copyWith(
            searchResult: [],
            fullProducts: [],
              isLoading: false, optionSuccessFailure: Some(Left(l))),
          (r) => state.copyWith(isLoading: false, searchResult: r));
      emit(out);
    });
  }

}
