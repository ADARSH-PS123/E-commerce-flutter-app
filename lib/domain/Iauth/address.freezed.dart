// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FullUserAddress {
  UserAddress get userAddress => throw _privateConstructorUsedError;
  PinCode get pincode => throw _privateConstructorUsedError;
  UniqueId get uniqueId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FullUserAddressCopyWith<FullUserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullUserAddressCopyWith<$Res> {
  factory $FullUserAddressCopyWith(
          FullUserAddress value, $Res Function(FullUserAddress) then) =
      _$FullUserAddressCopyWithImpl<$Res, FullUserAddress>;
  @useResult
  $Res call({UserAddress userAddress, PinCode pincode, UniqueId uniqueId});
}

/// @nodoc
class _$FullUserAddressCopyWithImpl<$Res, $Val extends FullUserAddress>
    implements $FullUserAddressCopyWith<$Res> {
  _$FullUserAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
    Object? pincode = null,
    Object? uniqueId = null,
  }) {
    return _then(_value.copyWith(
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as PinCode,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FullUserAddressCopyWith<$Res>
    implements $FullUserAddressCopyWith<$Res> {
  factory _$$_FullUserAddressCopyWith(
          _$_FullUserAddress value, $Res Function(_$_FullUserAddress) then) =
      __$$_FullUserAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserAddress userAddress, PinCode pincode, UniqueId uniqueId});
}

/// @nodoc
class __$$_FullUserAddressCopyWithImpl<$Res>
    extends _$FullUserAddressCopyWithImpl<$Res, _$_FullUserAddress>
    implements _$$_FullUserAddressCopyWith<$Res> {
  __$$_FullUserAddressCopyWithImpl(
      _$_FullUserAddress _value, $Res Function(_$_FullUserAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
    Object? pincode = null,
    Object? uniqueId = null,
  }) {
    return _then(_$_FullUserAddress(
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as PinCode,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_FullUserAddress implements _FullUserAddress {
  const _$_FullUserAddress(
      {required this.userAddress,
      required this.pincode,
      required this.uniqueId});

  @override
  final UserAddress userAddress;
  @override
  final PinCode pincode;
  @override
  final UniqueId uniqueId;

  @override
  String toString() {
    return 'FullUserAddress(userAddress: $userAddress, pincode: $pincode, uniqueId: $uniqueId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullUserAddress &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAddress, pincode, uniqueId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullUserAddressCopyWith<_$_FullUserAddress> get copyWith =>
      __$$_FullUserAddressCopyWithImpl<_$_FullUserAddress>(this, _$identity);
}

abstract class _FullUserAddress implements FullUserAddress {
  const factory _FullUserAddress(
      {required final UserAddress userAddress,
      required final PinCode pincode,
      required final UniqueId uniqueId}) = _$_FullUserAddress;

  @override
  UserAddress get userAddress;
  @override
  PinCode get pincode;
  @override
  UniqueId get uniqueId;
  @override
  @JsonKey(ignore: true)
  _$$_FullUserAddressCopyWith<_$_FullUserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
