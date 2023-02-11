part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState(
      {required List<Cart> cartProducts,
      required UniqueId userId,
      required bool isLoaded,
      required bool isLoading,
   required CountValueObject quantity,
      required Option<Either<AppFailure, Unit>> optionSuccessFailure,
      required bool isError}) = _OrderState;


   factory OrderState.initial() {
    return OrderState(cartProducts: [], userId: UniqueId.fromBackend(''), isLoading: false, quantity: CountValueObject(0), optionSuccessFailure: none(), isError: false, isLoaded: false);
  }
}
