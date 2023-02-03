import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/productEntity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'productDto.freezed.dart';
part 'productDto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const factory ProductDto(
      {required String thumbnail,
      required String id,
      required String brand,
       @JsonKey(name: 'category') required String productCategory,
      @JsonKey(name: 'description') required String productDescription,
      @JsonKey(name: 'images') required List<String> productPhotos,
      @JsonKey(name: 'title') required String productName,
      required int stock,
      @Default(0.0)    double rating,
      @Default(0.0)  double price,
      @Default(0.0) double discountPercentage}) = _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
        productName: product.productName.getOrElse(''),
        productCategory: product.productCategory.getOrElse(''),
        productDescription: product.productDescription.getOrCrash(),
        productPhotos:
            product.productPhotos.map((e) => e.getOrElse("")).toList(),
        id: product.id.getOrCrash(),

        brand: product.brand.getOrElse(''),
        discountPercentage: product.discountPercentage.getOrElse(0.0),
        price: product.price.getOrCrash(),
        stock: product.stock.getOrElse(0),
        thumbnail: product.thubnail.getOrElse(''), rating: product.rating.getOrElse(0));
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDtoFromJson(json);
}

extension ProductDtoX on ProductDto {
  Product toDomain() {
    return Product(
        
        productName: ProductValueObject(productName),
        productCategory: ProductValueObject(productCategory),
        productDescription: ProductValueObject(productDescription),
        productPhotos:
            productPhotos.map((photo) => ProductValueObject(photo)).toList(),
        id: UniqueId.fromBackend(id), brand: ProductValueObject(brand), discountPercentage: FloatValueObject(discountPercentage), 
        price: FloatValueObject(price), rating: FloatValueObject(rating), stock: CountValueObject(stock), thubnail:ProductValueObject(thumbnail));
  }
}
