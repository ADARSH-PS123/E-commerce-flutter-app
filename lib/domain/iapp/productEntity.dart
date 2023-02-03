import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'productEntity.freezed.dart';
@freezed
class Product with _$Product{
  const factory Product({
    required FloatValueObject price,
    required UniqueId id,
    required ProductValueObject productName,
    required ProductValueObject brand,
    required ProductValueObject productCategory,
    required ProductValueObject productDescription,
    required ProductValueObject thubnail,
    required FloatValueObject rating,
    required FloatValueObject discountPercentage,
    required CountValueObject stock,
    required List<ProductValueObject> productPhotos
  }) = _Product;
}