// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) userNameChanged,
    required TResult Function(String userAddress) userAddressChanged,
    required TResult Function(String pincode) userPincodeChanged,
    required TResult Function() editUserInfo,
    required TResult Function() editProfilePhoto,
    required TResult Function() removeProfilePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? userNameChanged,
    TResult? Function(String userAddress)? userAddressChanged,
    TResult? Function(String pincode)? userPincodeChanged,
    TResult? Function()? editUserInfo,
    TResult? Function()? editProfilePhoto,
    TResult? Function()? removeProfilePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? userNameChanged,
    TResult Function(String userAddress)? userAddressChanged,
    TResult Function(String pincode)? userPincodeChanged,
    TResult Function()? editUserInfo,
    TResult Function()? editProfilePhoto,
    TResult Function()? removeProfilePhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditUserEventUserNameChanged value)
        userNameChanged,
    required TResult Function(_EditUserEventUserAddressChanged value)
        userAddressChanged,
    required TResult Function(_EditUserEventUserPincodeChanged value)
        userPincodeChanged,
    required TResult Function(_EditUserEventEditUserInfo value) editUserInfo,
    required TResult Function(_EditUserEventEditProfilePhoto value)
        editProfilePhoto,
    required TResult Function(_EditUserEventRemoveProfilePhoto value)
        removeProfilePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult? Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult? Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult? Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult? Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult? Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserEventCopyWith<$Res> {
  factory $EditUserEventCopyWith(
          EditUserEvent value, $Res Function(EditUserEvent) then) =
      _$EditUserEventCopyWithImpl<$Res, EditUserEvent>;
}

/// @nodoc
class _$EditUserEventCopyWithImpl<$Res, $Val extends EditUserEvent>
    implements $EditUserEventCopyWith<$Res> {
  _$EditUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EditUserEventUserNameChangedCopyWith<$Res> {
  factory _$$_EditUserEventUserNameChangedCopyWith(
          _$_EditUserEventUserNameChanged value,
          $Res Function(_$_EditUserEventUserNameChanged) then) =
      __$$_EditUserEventUserNameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$_EditUserEventUserNameChangedCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res, _$_EditUserEventUserNameChanged>
    implements _$$_EditUserEventUserNameChangedCopyWith<$Res> {
  __$$_EditUserEventUserNameChangedCopyWithImpl(
      _$_EditUserEventUserNameChanged _value,
      $Res Function(_$_EditUserEventUserNameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$_EditUserEventUserNameChanged(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditUserEventUserNameChanged implements _EditUserEventUserNameChanged {
  const _$_EditUserEventUserNameChanged(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'EditUserEvent.userNameChanged(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserEventUserNameChanged &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditUserEventUserNameChangedCopyWith<_$_EditUserEventUserNameChanged>
      get copyWith => __$$_EditUserEventUserNameChangedCopyWithImpl<
          _$_EditUserEventUserNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) userNameChanged,
    required TResult Function(String userAddress) userAddressChanged,
    required TResult Function(String pincode) userPincodeChanged,
    required TResult Function() editUserInfo,
    required TResult Function() editProfilePhoto,
    required TResult Function() removeProfilePhoto,
  }) {
    return userNameChanged(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? userNameChanged,
    TResult? Function(String userAddress)? userAddressChanged,
    TResult? Function(String pincode)? userPincodeChanged,
    TResult? Function()? editUserInfo,
    TResult? Function()? editProfilePhoto,
    TResult? Function()? removeProfilePhoto,
  }) {
    return userNameChanged?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? userNameChanged,
    TResult Function(String userAddress)? userAddressChanged,
    TResult Function(String pincode)? userPincodeChanged,
    TResult Function()? editUserInfo,
    TResult Function()? editProfilePhoto,
    TResult Function()? removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditUserEventUserNameChanged value)
        userNameChanged,
    required TResult Function(_EditUserEventUserAddressChanged value)
        userAddressChanged,
    required TResult Function(_EditUserEventUserPincodeChanged value)
        userPincodeChanged,
    required TResult Function(_EditUserEventEditUserInfo value) editUserInfo,
    required TResult Function(_EditUserEventEditProfilePhoto value)
        editProfilePhoto,
    required TResult Function(_EditUserEventRemoveProfilePhoto value)
        removeProfilePhoto,
  }) {
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult? Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult? Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult? Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult? Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult? Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
  }) {
    return userNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class _EditUserEventUserNameChanged implements EditUserEvent {
  const factory _EditUserEventUserNameChanged(final String userName) =
      _$_EditUserEventUserNameChanged;

  String get userName;
  @JsonKey(ignore: true)
  _$$_EditUserEventUserNameChangedCopyWith<_$_EditUserEventUserNameChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditUserEventUserAddressChangedCopyWith<$Res> {
  factory _$$_EditUserEventUserAddressChangedCopyWith(
          _$_EditUserEventUserAddressChanged value,
          $Res Function(_$_EditUserEventUserAddressChanged) then) =
      __$$_EditUserEventUserAddressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String userAddress});
}

/// @nodoc
class __$$_EditUserEventUserAddressChangedCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res,
        _$_EditUserEventUserAddressChanged>
    implements _$$_EditUserEventUserAddressChangedCopyWith<$Res> {
  __$$_EditUserEventUserAddressChangedCopyWithImpl(
      _$_EditUserEventUserAddressChanged _value,
      $Res Function(_$_EditUserEventUserAddressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
  }) {
    return _then(_$_EditUserEventUserAddressChanged(
      null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditUserEventUserAddressChanged
    implements _EditUserEventUserAddressChanged {
  const _$_EditUserEventUserAddressChanged(this.userAddress);

  @override
  final String userAddress;

  @override
  String toString() {
    return 'EditUserEvent.userAddressChanged(userAddress: $userAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserEventUserAddressChanged &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditUserEventUserAddressChangedCopyWith<
          _$_EditUserEventUserAddressChanged>
      get copyWith => __$$_EditUserEventUserAddressChangedCopyWithImpl<
          _$_EditUserEventUserAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) userNameChanged,
    required TResult Function(String userAddress) userAddressChanged,
    required TResult Function(String pincode) userPincodeChanged,
    required TResult Function() editUserInfo,
    required TResult Function() editProfilePhoto,
    required TResult Function() removeProfilePhoto,
  }) {
    return userAddressChanged(userAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? userNameChanged,
    TResult? Function(String userAddress)? userAddressChanged,
    TResult? Function(String pincode)? userPincodeChanged,
    TResult? Function()? editUserInfo,
    TResult? Function()? editProfilePhoto,
    TResult? Function()? removeProfilePhoto,
  }) {
    return userAddressChanged?.call(userAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? userNameChanged,
    TResult Function(String userAddress)? userAddressChanged,
    TResult Function(String pincode)? userPincodeChanged,
    TResult Function()? editUserInfo,
    TResult Function()? editProfilePhoto,
    TResult Function()? removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (userAddressChanged != null) {
      return userAddressChanged(userAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditUserEventUserNameChanged value)
        userNameChanged,
    required TResult Function(_EditUserEventUserAddressChanged value)
        userAddressChanged,
    required TResult Function(_EditUserEventUserPincodeChanged value)
        userPincodeChanged,
    required TResult Function(_EditUserEventEditUserInfo value) editUserInfo,
    required TResult Function(_EditUserEventEditProfilePhoto value)
        editProfilePhoto,
    required TResult Function(_EditUserEventRemoveProfilePhoto value)
        removeProfilePhoto,
  }) {
    return userAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult? Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult? Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult? Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult? Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult? Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
  }) {
    return userAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (userAddressChanged != null) {
      return userAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _EditUserEventUserAddressChanged implements EditUserEvent {
  const factory _EditUserEventUserAddressChanged(final String userAddress) =
      _$_EditUserEventUserAddressChanged;

  String get userAddress;
  @JsonKey(ignore: true)
  _$$_EditUserEventUserAddressChangedCopyWith<
          _$_EditUserEventUserAddressChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditUserEventUserPincodeChangedCopyWith<$Res> {
  factory _$$_EditUserEventUserPincodeChangedCopyWith(
          _$_EditUserEventUserPincodeChanged value,
          $Res Function(_$_EditUserEventUserPincodeChanged) then) =
      __$$_EditUserEventUserPincodeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String pincode});
}

/// @nodoc
class __$$_EditUserEventUserPincodeChangedCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res,
        _$_EditUserEventUserPincodeChanged>
    implements _$$_EditUserEventUserPincodeChangedCopyWith<$Res> {
  __$$_EditUserEventUserPincodeChangedCopyWithImpl(
      _$_EditUserEventUserPincodeChanged _value,
      $Res Function(_$_EditUserEventUserPincodeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pincode = null,
  }) {
    return _then(_$_EditUserEventUserPincodeChanged(
      null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditUserEventUserPincodeChanged
    implements _EditUserEventUserPincodeChanged {
  const _$_EditUserEventUserPincodeChanged(this.pincode);

  @override
  final String pincode;

  @override
  String toString() {
    return 'EditUserEvent.userPincodeChanged(pincode: $pincode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserEventUserPincodeChanged &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditUserEventUserPincodeChangedCopyWith<
          _$_EditUserEventUserPincodeChanged>
      get copyWith => __$$_EditUserEventUserPincodeChangedCopyWithImpl<
          _$_EditUserEventUserPincodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) userNameChanged,
    required TResult Function(String userAddress) userAddressChanged,
    required TResult Function(String pincode) userPincodeChanged,
    required TResult Function() editUserInfo,
    required TResult Function() editProfilePhoto,
    required TResult Function() removeProfilePhoto,
  }) {
    return userPincodeChanged(pincode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? userNameChanged,
    TResult? Function(String userAddress)? userAddressChanged,
    TResult? Function(String pincode)? userPincodeChanged,
    TResult? Function()? editUserInfo,
    TResult? Function()? editProfilePhoto,
    TResult? Function()? removeProfilePhoto,
  }) {
    return userPincodeChanged?.call(pincode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? userNameChanged,
    TResult Function(String userAddress)? userAddressChanged,
    TResult Function(String pincode)? userPincodeChanged,
    TResult Function()? editUserInfo,
    TResult Function()? editProfilePhoto,
    TResult Function()? removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (userPincodeChanged != null) {
      return userPincodeChanged(pincode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditUserEventUserNameChanged value)
        userNameChanged,
    required TResult Function(_EditUserEventUserAddressChanged value)
        userAddressChanged,
    required TResult Function(_EditUserEventUserPincodeChanged value)
        userPincodeChanged,
    required TResult Function(_EditUserEventEditUserInfo value) editUserInfo,
    required TResult Function(_EditUserEventEditProfilePhoto value)
        editProfilePhoto,
    required TResult Function(_EditUserEventRemoveProfilePhoto value)
        removeProfilePhoto,
  }) {
    return userPincodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult? Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult? Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult? Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult? Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult? Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
  }) {
    return userPincodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (userPincodeChanged != null) {
      return userPincodeChanged(this);
    }
    return orElse();
  }
}

abstract class _EditUserEventUserPincodeChanged implements EditUserEvent {
  const factory _EditUserEventUserPincodeChanged(final String pincode) =
      _$_EditUserEventUserPincodeChanged;

  String get pincode;
  @JsonKey(ignore: true)
  _$$_EditUserEventUserPincodeChangedCopyWith<
          _$_EditUserEventUserPincodeChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditUserEventEditUserInfoCopyWith<$Res> {
  factory _$$_EditUserEventEditUserInfoCopyWith(
          _$_EditUserEventEditUserInfo value,
          $Res Function(_$_EditUserEventEditUserInfo) then) =
      __$$_EditUserEventEditUserInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EditUserEventEditUserInfoCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res, _$_EditUserEventEditUserInfo>
    implements _$$_EditUserEventEditUserInfoCopyWith<$Res> {
  __$$_EditUserEventEditUserInfoCopyWithImpl(
      _$_EditUserEventEditUserInfo _value,
      $Res Function(_$_EditUserEventEditUserInfo) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EditUserEventEditUserInfo implements _EditUserEventEditUserInfo {
  const _$_EditUserEventEditUserInfo();

  @override
  String toString() {
    return 'EditUserEvent.editUserInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserEventEditUserInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) userNameChanged,
    required TResult Function(String userAddress) userAddressChanged,
    required TResult Function(String pincode) userPincodeChanged,
    required TResult Function() editUserInfo,
    required TResult Function() editProfilePhoto,
    required TResult Function() removeProfilePhoto,
  }) {
    return editUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? userNameChanged,
    TResult? Function(String userAddress)? userAddressChanged,
    TResult? Function(String pincode)? userPincodeChanged,
    TResult? Function()? editUserInfo,
    TResult? Function()? editProfilePhoto,
    TResult? Function()? removeProfilePhoto,
  }) {
    return editUserInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? userNameChanged,
    TResult Function(String userAddress)? userAddressChanged,
    TResult Function(String pincode)? userPincodeChanged,
    TResult Function()? editUserInfo,
    TResult Function()? editProfilePhoto,
    TResult Function()? removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (editUserInfo != null) {
      return editUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditUserEventUserNameChanged value)
        userNameChanged,
    required TResult Function(_EditUserEventUserAddressChanged value)
        userAddressChanged,
    required TResult Function(_EditUserEventUserPincodeChanged value)
        userPincodeChanged,
    required TResult Function(_EditUserEventEditUserInfo value) editUserInfo,
    required TResult Function(_EditUserEventEditProfilePhoto value)
        editProfilePhoto,
    required TResult Function(_EditUserEventRemoveProfilePhoto value)
        removeProfilePhoto,
  }) {
    return editUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult? Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult? Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult? Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult? Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult? Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
  }) {
    return editUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (editUserInfo != null) {
      return editUserInfo(this);
    }
    return orElse();
  }
}

abstract class _EditUserEventEditUserInfo implements EditUserEvent {
  const factory _EditUserEventEditUserInfo() = _$_EditUserEventEditUserInfo;
}

/// @nodoc
abstract class _$$_EditUserEventEditProfilePhotoCopyWith<$Res> {
  factory _$$_EditUserEventEditProfilePhotoCopyWith(
          _$_EditUserEventEditProfilePhoto value,
          $Res Function(_$_EditUserEventEditProfilePhoto) then) =
      __$$_EditUserEventEditProfilePhotoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EditUserEventEditProfilePhotoCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res, _$_EditUserEventEditProfilePhoto>
    implements _$$_EditUserEventEditProfilePhotoCopyWith<$Res> {
  __$$_EditUserEventEditProfilePhotoCopyWithImpl(
      _$_EditUserEventEditProfilePhoto _value,
      $Res Function(_$_EditUserEventEditProfilePhoto) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EditUserEventEditProfilePhoto
    implements _EditUserEventEditProfilePhoto {
  const _$_EditUserEventEditProfilePhoto();

  @override
  String toString() {
    return 'EditUserEvent.editProfilePhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserEventEditProfilePhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) userNameChanged,
    required TResult Function(String userAddress) userAddressChanged,
    required TResult Function(String pincode) userPincodeChanged,
    required TResult Function() editUserInfo,
    required TResult Function() editProfilePhoto,
    required TResult Function() removeProfilePhoto,
  }) {
    return editProfilePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? userNameChanged,
    TResult? Function(String userAddress)? userAddressChanged,
    TResult? Function(String pincode)? userPincodeChanged,
    TResult? Function()? editUserInfo,
    TResult? Function()? editProfilePhoto,
    TResult? Function()? removeProfilePhoto,
  }) {
    return editProfilePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? userNameChanged,
    TResult Function(String userAddress)? userAddressChanged,
    TResult Function(String pincode)? userPincodeChanged,
    TResult Function()? editUserInfo,
    TResult Function()? editProfilePhoto,
    TResult Function()? removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (editProfilePhoto != null) {
      return editProfilePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditUserEventUserNameChanged value)
        userNameChanged,
    required TResult Function(_EditUserEventUserAddressChanged value)
        userAddressChanged,
    required TResult Function(_EditUserEventUserPincodeChanged value)
        userPincodeChanged,
    required TResult Function(_EditUserEventEditUserInfo value) editUserInfo,
    required TResult Function(_EditUserEventEditProfilePhoto value)
        editProfilePhoto,
    required TResult Function(_EditUserEventRemoveProfilePhoto value)
        removeProfilePhoto,
  }) {
    return editProfilePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult? Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult? Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult? Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult? Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult? Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
  }) {
    return editProfilePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (editProfilePhoto != null) {
      return editProfilePhoto(this);
    }
    return orElse();
  }
}

abstract class _EditUserEventEditProfilePhoto implements EditUserEvent {
  const factory _EditUserEventEditProfilePhoto() =
      _$_EditUserEventEditProfilePhoto;
}

/// @nodoc
abstract class _$$_EditUserEventRemoveProfilePhotoCopyWith<$Res> {
  factory _$$_EditUserEventRemoveProfilePhotoCopyWith(
          _$_EditUserEventRemoveProfilePhoto value,
          $Res Function(_$_EditUserEventRemoveProfilePhoto) then) =
      __$$_EditUserEventRemoveProfilePhotoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EditUserEventRemoveProfilePhotoCopyWithImpl<$Res>
    extends _$EditUserEventCopyWithImpl<$Res,
        _$_EditUserEventRemoveProfilePhoto>
    implements _$$_EditUserEventRemoveProfilePhotoCopyWith<$Res> {
  __$$_EditUserEventRemoveProfilePhotoCopyWithImpl(
      _$_EditUserEventRemoveProfilePhoto _value,
      $Res Function(_$_EditUserEventRemoveProfilePhoto) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EditUserEventRemoveProfilePhoto
    implements _EditUserEventRemoveProfilePhoto {
  const _$_EditUserEventRemoveProfilePhoto();

  @override
  String toString() {
    return 'EditUserEvent.removeProfilePhoto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserEventRemoveProfilePhoto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) userNameChanged,
    required TResult Function(String userAddress) userAddressChanged,
    required TResult Function(String pincode) userPincodeChanged,
    required TResult Function() editUserInfo,
    required TResult Function() editProfilePhoto,
    required TResult Function() removeProfilePhoto,
  }) {
    return removeProfilePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? userNameChanged,
    TResult? Function(String userAddress)? userAddressChanged,
    TResult? Function(String pincode)? userPincodeChanged,
    TResult? Function()? editUserInfo,
    TResult? Function()? editProfilePhoto,
    TResult? Function()? removeProfilePhoto,
  }) {
    return removeProfilePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? userNameChanged,
    TResult Function(String userAddress)? userAddressChanged,
    TResult Function(String pincode)? userPincodeChanged,
    TResult Function()? editUserInfo,
    TResult Function()? editProfilePhoto,
    TResult Function()? removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (removeProfilePhoto != null) {
      return removeProfilePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditUserEventUserNameChanged value)
        userNameChanged,
    required TResult Function(_EditUserEventUserAddressChanged value)
        userAddressChanged,
    required TResult Function(_EditUserEventUserPincodeChanged value)
        userPincodeChanged,
    required TResult Function(_EditUserEventEditUserInfo value) editUserInfo,
    required TResult Function(_EditUserEventEditProfilePhoto value)
        editProfilePhoto,
    required TResult Function(_EditUserEventRemoveProfilePhoto value)
        removeProfilePhoto,
  }) {
    return removeProfilePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult? Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult? Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult? Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult? Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult? Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
  }) {
    return removeProfilePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditUserEventUserNameChanged value)? userNameChanged,
    TResult Function(_EditUserEventUserAddressChanged value)?
        userAddressChanged,
    TResult Function(_EditUserEventUserPincodeChanged value)?
        userPincodeChanged,
    TResult Function(_EditUserEventEditUserInfo value)? editUserInfo,
    TResult Function(_EditUserEventEditProfilePhoto value)? editProfilePhoto,
    TResult Function(_EditUserEventRemoveProfilePhoto value)?
        removeProfilePhoto,
    required TResult orElse(),
  }) {
    if (removeProfilePhoto != null) {
      return removeProfilePhoto(this);
    }
    return orElse();
  }
}

abstract class _EditUserEventRemoveProfilePhoto implements EditUserEvent {
  const factory _EditUserEventRemoveProfilePhoto() =
      _$_EditUserEventRemoveProfilePhoto;
}

/// @nodoc
mixin _$EditUserState {
  AppUser get user => throw _privateConstructorUsedError;
  PinCode get pincode => throw _privateConstructorUsedError;
  UserAddress get userAddress => throw _privateConstructorUsedError;
  UserName get userName => throw _privateConstructorUsedError;
  Option<Either<AppFailure, Unit>> get optionSuccessFailure =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditUserStateCopyWith<EditUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserStateCopyWith<$Res> {
  factory $EditUserStateCopyWith(
          EditUserState value, $Res Function(EditUserState) then) =
      _$EditUserStateCopyWithImpl<$Res, EditUserState>;
  @useResult
  $Res call(
      {AppUser user,
      PinCode pincode,
      UserAddress userAddress,
      UserName userName,
      Option<Either<AppFailure, Unit>> optionSuccessFailure,
      bool isLoading,
      bool isError});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class _$EditUserStateCopyWithImpl<$Res, $Val extends EditUserState>
    implements $EditUserStateCopyWith<$Res> {
  _$EditUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? pincode = null,
    Object? userAddress = null,
    Object? userName = null,
    Object? optionSuccessFailure = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as PinCode,
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      optionSuccessFailure: null == optionSuccessFailure
          ? _value.optionSuccessFailure
          : optionSuccessFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, Unit>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EditUserStateCopyWith<$Res>
    implements $EditUserStateCopyWith<$Res> {
  factory _$$_EditUserStateCopyWith(
          _$_EditUserState value, $Res Function(_$_EditUserState) then) =
      __$$_EditUserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser user,
      PinCode pincode,
      UserAddress userAddress,
      UserName userName,
      Option<Either<AppFailure, Unit>> optionSuccessFailure,
      bool isLoading,
      bool isError});

  @override
  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_EditUserStateCopyWithImpl<$Res>
    extends _$EditUserStateCopyWithImpl<$Res, _$_EditUserState>
    implements _$$_EditUserStateCopyWith<$Res> {
  __$$_EditUserStateCopyWithImpl(
      _$_EditUserState _value, $Res Function(_$_EditUserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? pincode = null,
    Object? userAddress = null,
    Object? userName = null,
    Object? optionSuccessFailure = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_EditUserState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as PinCode,
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      optionSuccessFailure: null == optionSuccessFailure
          ? _value.optionSuccessFailure
          : optionSuccessFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, Unit>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EditUserState implements _EditUserState {
  const _$_EditUserState(
      {required this.user,
      required this.pincode,
      required this.userAddress,
      required this.userName,
      required this.optionSuccessFailure,
      required this.isLoading,
      required this.isError});

  @override
  final AppUser user;
  @override
  final PinCode pincode;
  @override
  final UserAddress userAddress;
  @override
  final UserName userName;
  @override
  final Option<Either<AppFailure, Unit>> optionSuccessFailure;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'EditUserState(user: $user, pincode: $pincode, userAddress: $userAddress, userName: $userName, optionSuccessFailure: $optionSuccessFailure, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.optionSuccessFailure, optionSuccessFailure) ||
                other.optionSuccessFailure == optionSuccessFailure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, pincode, userAddress,
      userName, optionSuccessFailure, isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditUserStateCopyWith<_$_EditUserState> get copyWith =>
      __$$_EditUserStateCopyWithImpl<_$_EditUserState>(this, _$identity);
}

abstract class _EditUserState implements EditUserState {
  const factory _EditUserState(
      {required final AppUser user,
      required final PinCode pincode,
      required final UserAddress userAddress,
      required final UserName userName,
      required final Option<Either<AppFailure, Unit>> optionSuccessFailure,
      required final bool isLoading,
      required final bool isError}) = _$_EditUserState;

  @override
  AppUser get user;
  @override
  PinCode get pincode;
  @override
  UserAddress get userAddress;
  @override
  UserName get userName;
  @override
  Option<Either<AppFailure, Unit>> get optionSuccessFailure;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_EditUserStateCopyWith<_$_EditUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
