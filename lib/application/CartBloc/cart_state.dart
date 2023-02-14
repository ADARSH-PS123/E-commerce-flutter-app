part of 'cart_bloc.dart';



@freezed
class CartState with _$CartState {
  const factory CartState(
      {required List<Cart> cartProducts,
      required UniqueId userId,
      required bool miniLoading ,
      required bool isLoading,
      required CountValueObject totalPrice,
      required bool isProductsMovedtoHistory,
   required CountValueObject quantity,
   required bool isCartLoaded,
      required Option<Either<AppFailure, Unit>> optionSuccessFailure,
      required bool isError}) = _CartState;
  factory CartState.initial() {
    return CartState(
     quantity: CountValueObject(0),
     isCartLoaded: false,
        cartProducts: [],miniLoading: false,
        userId: UniqueId.fromBackend(''),
        isLoading: false,
        optionSuccessFailure: none(),
        isError: false, isProductsMovedtoHistory: false, totalPrice: CountValueObject(0));
  }
}