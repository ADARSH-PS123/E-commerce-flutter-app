import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cartEntity.freezed.dart';
@freezed
class Cart with _$Cart{
  const factory Cart({
    required CountValueObject quantity,
    required Product product,
    
  }) = _Cart;
}