part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  // get the userid from ui while listening to main Bloc listner

  const factory CartEvent.getCArtProducts() = _CartEventGetCart;
  const factory CartEvent.setCartProducts(UniqueId productId) =
      _CartEventSetCart;
  const factory CartEvent.removeCart(UniqueId productId) = _CartEventRemoveCart;

  const factory CartEvent.changeQuantity(
          UniqueId productId, CountValueObject quantity) =
      _CartEventCahngeQuantityCart;
        const factory CartEvent.moveCartProdutToOrderHistory() = _CartEventmoveCartProdutToOrderHistory;
}
