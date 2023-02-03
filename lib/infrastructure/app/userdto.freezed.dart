// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'userdto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUserDto _$AppUserDtoFromJson(Map<String, dynamic> json) {
  return _AppUserDto.fromJson(json);
}

/// @nodoc
mixin _$AppUserDto {
  String get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get profilePhoto => throw _privateConstructorUsedError;
  FullUserAddressDto get fullAddress => throw _privateConstructorUsedError;
  List<FullUserAddressDto> get addresses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserDtoCopyWith<AppUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserDtoCopyWith<$Res> {
  factory $AppUserDtoCopyWith(
          AppUserDto value, $Res Function(AppUserDto) then) =
      _$AppUserDtoCopyWithImpl<$Res, AppUserDto>;
  @useResult
  $Res call(
      {String id,
      String userName,
      String emailAddress,
      String profilePhoto,
      FullUserAddressDto fullAddress,
      List<FullUserAddressDto> addresses});

  $FullUserAddressDtoCopyWith<$Res> get fullAddress;
}

/// @nodoc
class _$AppUserDtoCopyWithImpl<$Res, $Val extends AppUserDto>
    implements $AppUserDtoCopyWith<$Res> {
  _$AppUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? emailAddress = null,
    Object? profilePhoto = null,
    Object? fullAddress = null,
    Object? addresses = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: null == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      fullAddress: null == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as FullUserAddressDto,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<FullUserAddressDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FullUserAddressDtoCopyWith<$Res> get fullAddress {
    return $FullUserAddressDtoCopyWith<$Res>(_value.fullAddress, (value) {
      return _then(_value.copyWith(fullAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppUserDtoCopyWith<$Res>
    implements $AppUserDtoCopyWith<$Res> {
  factory _$$_AppUserDtoCopyWith(
          _$_AppUserDto value, $Res Function(_$_AppUserDto) then) =
      __$$_AppUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userName,
      String emailAddress,
      String profilePhoto,
      FullUserAddressDto fullAddress,
      List<FullUserAddressDto> addresses});

  @override
  $FullUserAddressDtoCopyWith<$Res> get fullAddress;
}

/// @nodoc
class __$$_AppUserDtoCopyWithImpl<$Res>
    extends _$AppUserDtoCopyWithImpl<$Res, _$_AppUserDto>
    implements _$$_AppUserDtoCopyWith<$Res> {
  __$$_AppUserDtoCopyWithImpl(
      _$_AppUserDto _value, $Res Function(_$_AppUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? emailAddress = null,
    Object? profilePhoto = null,
    Object? fullAddress = null,
    Object? addresses = null,
  }) {
    return _then(_$_AppUserDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: null == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String,
      fullAddress: null == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as FullUserAddressDto,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<FullUserAddressDto>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AppUserDto implements _AppUserDto {
  const _$_AppUserDto(
      {required this.id,
      required this.userName,
      required this.emailAddress,
      required this.profilePhoto,
      required this.fullAddress,
      required final List<FullUserAddressDto> addresses})
      : _addresses = addresses;

  factory _$_AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserDtoFromJson(json);

  @override
  final String id;
  @override
  final String userName;
  @override
  final String emailAddress;
  @override
  final String profilePhoto;
  @override
  final FullUserAddressDto fullAddress;
  final List<FullUserAddressDto> _addresses;
  @override
  List<FullUserAddressDto> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'AppUserDto(id: $id, userName: $userName, emailAddress: $emailAddress, profilePhoto: $profilePhoto, fullAddress: $fullAddress, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userName,
      emailAddress,
      profilePhoto,
      fullAddress,
      const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserDtoCopyWith<_$_AppUserDto> get copyWith =>
      __$$_AppUserDtoCopyWithImpl<_$_AppUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserDtoToJson(
      this,
    );
  }
}

abstract class _AppUserDto implements AppUserDto {
  const factory _AppUserDto(
      {required final String id,
      required final String userName,
      required final String emailAddress,
      required final String profilePhoto,
      required final FullUserAddressDto fullAddress,
      required final List<FullUserAddressDto> addresses}) = _$_AppUserDto;

  factory _AppUserDto.fromJson(Map<String, dynamic> json) =
      _$_AppUserDto.fromJson;

  @override
  String get id;
  @override
  String get userName;
  @override
  String get emailAddress;
  @override
  String get profilePhoto;
  @override
  FullUserAddressDto get fullAddress;
  @override
  List<FullUserAddressDto> get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserDtoCopyWith<_$_AppUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

FullUserAddressDto _$FullUserAddressDtoFromJson(Map<String, dynamic> json) {
  return _FullUserAddressDto.fromJson(json);
}

/// @nodoc
mixin _$FullUserAddressDto {
  String get userAddress => throw _privateConstructorUsedError;
  String get uniqueId => throw _privateConstructorUsedError;
  String get pincode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullUserAddressDtoCopyWith<FullUserAddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullUserAddressDtoCopyWith<$Res> {
  factory $FullUserAddressDtoCopyWith(
          FullUserAddressDto value, $Res Function(FullUserAddressDto) then) =
      _$FullUserAddressDtoCopyWithImpl<$Res, FullUserAddressDto>;
  @useResult
  $Res call({String userAddress, String uniqueId, String pincode});
}

/// @nodoc
class _$FullUserAddressDtoCopyWithImpl<$Res, $Val extends FullUserAddressDto>
    implements $FullUserAddressDtoCopyWith<$Res> {
  _$FullUserAddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
    Object? uniqueId = null,
    Object? pincode = null,
  }) {
    return _then(_value.copyWith(
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FullUserAddressDtoCopyWith<$Res>
    implements $FullUserAddressDtoCopyWith<$Res> {
  factory _$$_FullUserAddressDtoCopyWith(_$_FullUserAddressDto value,
          $Res Function(_$_FullUserAddressDto) then) =
      __$$_FullUserAddressDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userAddress, String uniqueId, String pincode});
}

/// @nodoc
class __$$_FullUserAddressDtoCopyWithImpl<$Res>
    extends _$FullUserAddressDtoCopyWithImpl<$Res, _$_FullUserAddressDto>
    implements _$$_FullUserAddressDtoCopyWith<$Res> {
  __$$_FullUserAddressDtoCopyWithImpl(
      _$_FullUserAddressDto _value, $Res Function(_$_FullUserAddressDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
    Object? uniqueId = null,
    Object? pincode = null,
  }) {
    return _then(_$_FullUserAddressDto(
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FullUserAddressDto implements _FullUserAddressDto {
  const _$_FullUserAddressDto(
      {required this.userAddress,
      required this.uniqueId,
      required this.pincode});

  factory _$_FullUserAddressDto.fromJson(Map<String, dynamic> json) =>
      _$$_FullUserAddressDtoFromJson(json);

  @override
  final String userAddress;
  @override
  final String uniqueId;
  @override
  final String pincode;

  @override
  String toString() {
    return 'FullUserAddressDto(userAddress: $userAddress, uniqueId: $uniqueId, pincode: $pincode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullUserAddressDto &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userAddress, uniqueId, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullUserAddressDtoCopyWith<_$_FullUserAddressDto> get copyWith =>
      __$$_FullUserAddressDtoCopyWithImpl<_$_FullUserAddressDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FullUserAddressDtoToJson(
      this,
    );
  }
}

abstract class _FullUserAddressDto implements FullUserAddressDto {
  const factory _FullUserAddressDto(
      {required final String userAddress,
      required final String uniqueId,
      required final String pincode}) = _$_FullUserAddressDto;

  factory _FullUserAddressDto.fromJson(Map<String, dynamic> json) =
      _$_FullUserAddressDto.fromJson;

  @override
  String get userAddress;
  @override
  String get uniqueId;
  @override
  String get pincode;
  @override
  @JsonKey(ignore: true)
  _$$_FullUserAddressDtoCopyWith<_$_FullUserAddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}
