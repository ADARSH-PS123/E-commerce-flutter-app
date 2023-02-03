part of 'product_bloc_bloc.dart';
@freezed
class ProductWatcherState with _$ProductWatcherState{
  const factory ProductWatcherState({
  required bool isLoading ,   required  List<Product> fullProducts,required ProductValueObject searchData,
    required List<Product> searchResult,required Option<Either<AppFailure,Unit>> optionSuccessFailure,
  }) = _ProductWatcherState;
  factory ProductWatcherState.initial(){
    return ProductWatcherState(
      searchData: ProductValueObject(''),
      isLoading: false, fullProducts: [], searchResult: [], optionSuccessFailure: none())
;  }
   
  }
   
