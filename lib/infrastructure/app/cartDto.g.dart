// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartDto _$$_CartDtoFromJson(Map<String, dynamic> json) => _$_CartDto(
      quantity: json['quantity'] as int,
      productDto:
          ProductDto.fromJson(json['productRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartDtoToJson(_$_CartDto instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'productRef': instance.productDto,
    };
