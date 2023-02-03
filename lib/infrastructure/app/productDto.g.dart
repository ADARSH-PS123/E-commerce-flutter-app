// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductDto(
      thumbnail: json['thumbnail'] as String,
      id: json['id'] as String,
      brand: json['brand'] as String,
      productCategory: json['category'] as String,
      productDescription: json['description'] as String,
      productPhotos:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      productName: json['title'] as String,
      stock: json['stock'] as int,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      discountPercentage:
          (json['discountPercentage'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'id': instance.id,
      'brand': instance.brand,
      'category': instance.productCategory,
      'description': instance.productDescription,
      'images': instance.productPhotos,
      'title': instance.productName,
      'stock': instance.stock,
      'rating': instance.rating,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
    };
