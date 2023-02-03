// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userdto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUserDto _$$_AppUserDtoFromJson(Map<String, dynamic> json) =>
    _$_AppUserDto(
      id: json['id'] as String,
      userName: json['userName'] as String,
      emailAddress: json['emailAddress'] as String,
      profilePhoto: json['profilePhoto'] as String,
      fullAddress: FullUserAddressDto.fromJson(
          json['fullAddress'] as Map<String, dynamic>),
      addresses: (json['addresses'] as List<dynamic>)
          .map((e) => FullUserAddressDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AppUserDtoToJson(_$_AppUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'emailAddress': instance.emailAddress,
      'profilePhoto': instance.profilePhoto,
      'fullAddress': instance.fullAddress.toJson(),
      'addresses': instance.addresses.map((e) => e.toJson()).toList(),
    };

_$_FullUserAddressDto _$$_FullUserAddressDtoFromJson(
        Map<String, dynamic> json) =>
    _$_FullUserAddressDto(
      userAddress: json['userAddress'] as String,
      uniqueId: json['uniqueId'] as String,
      pincode: json['pincode'] as String,
    );

Map<String, dynamic> _$$_FullUserAddressDtoToJson(
        _$_FullUserAddressDto instance) =>
    <String, dynamic>{
      'userAddress': instance.userAddress,
      'uniqueId': instance.uniqueId,
      'pincode': instance.pincode,
    };
