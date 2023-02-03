import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/infrastructure/app/productDto.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/iapp/cartEntity.dart';
part 'cartDto.freezed.dart';
part 'cartDto.g.dart';
@freezed
class CartDto with _$CartDto{
  const factory CartDto({
    required int quantity,
   @JsonKey(name: 'productRef') required ProductDto productDto
  }) = _CartDto;
    factory CartDto.fromJson(Map<String, dynamic> json) =>
      _$$_CartDtoFromJson(json);

      factory CartDto.fromDomain(Cart cart){
        return CartDto(productDto: ProductDto.fromDomain(cart.product),quantity: cart.quantity.getOrCrash() );
      }
}
extension CartDtoX on CartDto{
  Cart toDomain(){
    return Cart(quantity: CountValueObject(quantity), product: productDto.toDomain());
  }
}