// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordStr) confirmpasswordChanged,
    required TResult Function() regWithEmailAndPass,
    required TResult Function() signinWithEmailansPassword,
    required TResult Function() ispasswordMatched,
    required TResult Function() sendPasswordResetMail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String passwordStr)? confirmpasswordChanged,
    TResult? Function()? regWithEmailAndPass,
    TResult? Function()? signinWithEmailansPassword,
    TResult? Function()? ispasswordMatched,
    TResult? Function()? sendPasswordResetMail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordStr)? confirmpasswordChanged,
    TResult Function()? regWithEmailAndPass,
    TResult Function()? signinWithEmailansPassword,
    TResult Function()? ispasswordMatched,
    TResult Function()? sendPasswordResetMail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(_RegWithEmailAndPassword value)
        regWithEmailAndPass,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailansPassword,
    required TResult Function(_IsPasswordMatched value) ispasswordMatched,
    required TResult Function(_PasswordResetMail value) sendPasswordResetMail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult? Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult? Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult? Function(_PasswordResetMail value)? sendPasswordResetMail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult Function(_PasswordResetMail value)? sendPasswordResetMail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_EmailChanged>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$_EmailChanged(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordStr) confirmpasswordChanged,
    required TResult Function() regWithEmailAndPass,
    required TResult Function() signinWithEmailansPassword,
    required TResult Function() ispasswordMatched,
    required TResult Function() sendPasswordResetMail,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String passwordStr)? confirmpasswordChanged,
    TResult? Function()? regWithEmailAndPass,
    TResult? Function()? signinWithEmailansPassword,
    TResult? Function()? ispasswordMatched,
    TResult? Function()? sendPasswordResetMail,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordStr)? confirmpasswordChanged,
    TResult Function()? regWithEmailAndPass,
    TResult Function()? signinWithEmailansPassword,
    TResult Function()? ispasswordMatched,
    TResult Function()? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(_RegWithEmailAndPassword value)
        regWithEmailAndPass,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailansPassword,
    required TResult Function(_IsPasswordMatched value) ispasswordMatched,
    required TResult Function(_PasswordResetMail value) sendPasswordResetMail,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult? Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult? Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult? Function(_PasswordResetMail value)? sendPasswordResetMail,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult Function(_PasswordResetMail value)? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements AuthEvent {
  const factory _EmailChanged(final String emailStr) = _$_EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$_PasswordChanged(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordStr) confirmpasswordChanged,
    required TResult Function() regWithEmailAndPass,
    required TResult Function() signinWithEmailansPassword,
    required TResult Function() ispasswordMatched,
    required TResult Function() sendPasswordResetMail,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String passwordStr)? confirmpasswordChanged,
    TResult? Function()? regWithEmailAndPass,
    TResult? Function()? signinWithEmailansPassword,
    TResult? Function()? ispasswordMatched,
    TResult? Function()? sendPasswordResetMail,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordStr)? confirmpasswordChanged,
    TResult Function()? regWithEmailAndPass,
    TResult Function()? signinWithEmailansPassword,
    TResult Function()? ispasswordMatched,
    TResult Function()? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(_RegWithEmailAndPassword value)
        regWithEmailAndPass,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailansPassword,
    required TResult Function(_IsPasswordMatched value) ispasswordMatched,
    required TResult Function(_PasswordResetMail value) sendPasswordResetMail,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult? Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult? Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult? Function(_PasswordResetMail value)? sendPasswordResetMail,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult Function(_PasswordResetMail value)? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements AuthEvent {
  const factory _PasswordChanged(final String passwordStr) = _$_PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfirmPasswordChangedCopyWith<$Res> {
  factory _$$_ConfirmPasswordChangedCopyWith(_$_ConfirmPasswordChanged value,
          $Res Function(_$_ConfirmPasswordChanged) then) =
      __$$_ConfirmPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$_ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ConfirmPasswordChanged>
    implements _$$_ConfirmPasswordChangedCopyWith<$Res> {
  __$$_ConfirmPasswordChangedCopyWithImpl(_$_ConfirmPasswordChanged _value,
      $Res Function(_$_ConfirmPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$_ConfirmPasswordChanged(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmPasswordChanged implements _ConfirmPasswordChanged {
  const _$_ConfirmPasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'AuthEvent.confirmpasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmPasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmPasswordChangedCopyWith<_$_ConfirmPasswordChanged> get copyWith =>
      __$$_ConfirmPasswordChangedCopyWithImpl<_$_ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordStr) confirmpasswordChanged,
    required TResult Function() regWithEmailAndPass,
    required TResult Function() signinWithEmailansPassword,
    required TResult Function() ispasswordMatched,
    required TResult Function() sendPasswordResetMail,
  }) {
    return confirmpasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String passwordStr)? confirmpasswordChanged,
    TResult? Function()? regWithEmailAndPass,
    TResult? Function()? signinWithEmailansPassword,
    TResult? Function()? ispasswordMatched,
    TResult? Function()? sendPasswordResetMail,
  }) {
    return confirmpasswordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordStr)? confirmpasswordChanged,
    TResult Function()? regWithEmailAndPass,
    TResult Function()? signinWithEmailansPassword,
    TResult Function()? ispasswordMatched,
    TResult Function()? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (confirmpasswordChanged != null) {
      return confirmpasswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(_RegWithEmailAndPassword value)
        regWithEmailAndPass,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailansPassword,
    required TResult Function(_IsPasswordMatched value) ispasswordMatched,
    required TResult Function(_PasswordResetMail value) sendPasswordResetMail,
  }) {
    return confirmpasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult? Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult? Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult? Function(_PasswordResetMail value)? sendPasswordResetMail,
  }) {
    return confirmpasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult Function(_PasswordResetMail value)? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (confirmpasswordChanged != null) {
      return confirmpasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements AuthEvent {
  const factory _ConfirmPasswordChanged(final String passwordStr) =
      _$_ConfirmPasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$_ConfirmPasswordChangedCopyWith<_$_ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_RegWithEmailAndPasswordCopyWith(_$_RegWithEmailAndPassword value,
          $Res Function(_$_RegWithEmailAndPassword) then) =
      __$$_RegWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_RegWithEmailAndPassword>
    implements _$$_RegWithEmailAndPasswordCopyWith<$Res> {
  __$$_RegWithEmailAndPasswordCopyWithImpl(_$_RegWithEmailAndPassword _value,
      $Res Function(_$_RegWithEmailAndPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegWithEmailAndPassword implements _RegWithEmailAndPassword {
  const _$_RegWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthEvent.regWithEmailAndPass()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordStr) confirmpasswordChanged,
    required TResult Function() regWithEmailAndPass,
    required TResult Function() signinWithEmailansPassword,
    required TResult Function() ispasswordMatched,
    required TResult Function() sendPasswordResetMail,
  }) {
    return regWithEmailAndPass();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String passwordStr)? confirmpasswordChanged,
    TResult? Function()? regWithEmailAndPass,
    TResult? Function()? signinWithEmailansPassword,
    TResult? Function()? ispasswordMatched,
    TResult? Function()? sendPasswordResetMail,
  }) {
    return regWithEmailAndPass?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordStr)? confirmpasswordChanged,
    TResult Function()? regWithEmailAndPass,
    TResult Function()? signinWithEmailansPassword,
    TResult Function()? ispasswordMatched,
    TResult Function()? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (regWithEmailAndPass != null) {
      return regWithEmailAndPass();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(_RegWithEmailAndPassword value)
        regWithEmailAndPass,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailansPassword,
    required TResult Function(_IsPasswordMatched value) ispasswordMatched,
    required TResult Function(_PasswordResetMail value) sendPasswordResetMail,
  }) {
    return regWithEmailAndPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult? Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult? Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult? Function(_PasswordResetMail value)? sendPasswordResetMail,
  }) {
    return regWithEmailAndPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult Function(_PasswordResetMail value)? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (regWithEmailAndPass != null) {
      return regWithEmailAndPass(this);
    }
    return orElse();
  }
}

abstract class _RegWithEmailAndPassword implements AuthEvent {
  const factory _RegWithEmailAndPassword() = _$_RegWithEmailAndPassword;
}

/// @nodoc
abstract class _$$_SignInWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_SignInWithEmailAndPasswordCopyWith(
          _$_SignInWithEmailAndPassword value,
          $Res Function(_$_SignInWithEmailAndPassword) then) =
      __$$_SignInWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInWithEmailAndPassword>
    implements _$$_SignInWithEmailAndPasswordCopyWith<$Res> {
  __$$_SignInWithEmailAndPasswordCopyWithImpl(
      _$_SignInWithEmailAndPassword _value,
      $Res Function(_$_SignInWithEmailAndPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInWithEmailAndPassword implements _SignInWithEmailAndPassword {
  const _$_SignInWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthEvent.signinWithEmailansPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordStr) confirmpasswordChanged,
    required TResult Function() regWithEmailAndPass,
    required TResult Function() signinWithEmailansPassword,
    required TResult Function() ispasswordMatched,
    required TResult Function() sendPasswordResetMail,
  }) {
    return signinWithEmailansPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String passwordStr)? confirmpasswordChanged,
    TResult? Function()? regWithEmailAndPass,
    TResult? Function()? signinWithEmailansPassword,
    TResult? Function()? ispasswordMatched,
    TResult? Function()? sendPasswordResetMail,
  }) {
    return signinWithEmailansPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordStr)? confirmpasswordChanged,
    TResult Function()? regWithEmailAndPass,
    TResult Function()? signinWithEmailansPassword,
    TResult Function()? ispasswordMatched,
    TResult Function()? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (signinWithEmailansPassword != null) {
      return signinWithEmailansPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(_RegWithEmailAndPassword value)
        regWithEmailAndPass,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailansPassword,
    required TResult Function(_IsPasswordMatched value) ispasswordMatched,
    required TResult Function(_PasswordResetMail value) sendPasswordResetMail,
  }) {
    return signinWithEmailansPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult? Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult? Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult? Function(_PasswordResetMail value)? sendPasswordResetMail,
  }) {
    return signinWithEmailansPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult Function(_PasswordResetMail value)? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (signinWithEmailansPassword != null) {
      return signinWithEmailansPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPassword implements AuthEvent {
  const factory _SignInWithEmailAndPassword() = _$_SignInWithEmailAndPassword;
}

/// @nodoc
abstract class _$$_IsPasswordMatchedCopyWith<$Res> {
  factory _$$_IsPasswordMatchedCopyWith(_$_IsPasswordMatched value,
          $Res Function(_$_IsPasswordMatched) then) =
      __$$_IsPasswordMatchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsPasswordMatchedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_IsPasswordMatched>
    implements _$$_IsPasswordMatchedCopyWith<$Res> {
  __$$_IsPasswordMatchedCopyWithImpl(
      _$_IsPasswordMatched _value, $Res Function(_$_IsPasswordMatched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsPasswordMatched implements _IsPasswordMatched {
  const _$_IsPasswordMatched();

  @override
  String toString() {
    return 'AuthEvent.ispasswordMatched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsPasswordMatched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordStr) confirmpasswordChanged,
    required TResult Function() regWithEmailAndPass,
    required TResult Function() signinWithEmailansPassword,
    required TResult Function() ispasswordMatched,
    required TResult Function() sendPasswordResetMail,
  }) {
    return ispasswordMatched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String passwordStr)? confirmpasswordChanged,
    TResult? Function()? regWithEmailAndPass,
    TResult? Function()? signinWithEmailansPassword,
    TResult? Function()? ispasswordMatched,
    TResult? Function()? sendPasswordResetMail,
  }) {
    return ispasswordMatched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordStr)? confirmpasswordChanged,
    TResult Function()? regWithEmailAndPass,
    TResult Function()? signinWithEmailansPassword,
    TResult Function()? ispasswordMatched,
    TResult Function()? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (ispasswordMatched != null) {
      return ispasswordMatched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(_RegWithEmailAndPassword value)
        regWithEmailAndPass,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailansPassword,
    required TResult Function(_IsPasswordMatched value) ispasswordMatched,
    required TResult Function(_PasswordResetMail value) sendPasswordResetMail,
  }) {
    return ispasswordMatched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult? Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult? Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult? Function(_PasswordResetMail value)? sendPasswordResetMail,
  }) {
    return ispasswordMatched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult Function(_PasswordResetMail value)? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (ispasswordMatched != null) {
      return ispasswordMatched(this);
    }
    return orElse();
  }
}

abstract class _IsPasswordMatched implements AuthEvent {
  const factory _IsPasswordMatched() = _$_IsPasswordMatched;
}

/// @nodoc
abstract class _$$_PasswordResetMailCopyWith<$Res> {
  factory _$$_PasswordResetMailCopyWith(_$_PasswordResetMail value,
          $Res Function(_$_PasswordResetMail) then) =
      __$$_PasswordResetMailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PasswordResetMailCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_PasswordResetMail>
    implements _$$_PasswordResetMailCopyWith<$Res> {
  __$$_PasswordResetMailCopyWithImpl(
      _$_PasswordResetMail _value, $Res Function(_$_PasswordResetMail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PasswordResetMail implements _PasswordResetMail {
  const _$_PasswordResetMail();

  @override
  String toString() {
    return 'AuthEvent.sendPasswordResetMail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PasswordResetMail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String passwordStr) confirmpasswordChanged,
    required TResult Function() regWithEmailAndPass,
    required TResult Function() signinWithEmailansPassword,
    required TResult Function() ispasswordMatched,
    required TResult Function() sendPasswordResetMail,
  }) {
    return sendPasswordResetMail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String passwordStr)? confirmpasswordChanged,
    TResult? Function()? regWithEmailAndPass,
    TResult? Function()? signinWithEmailansPassword,
    TResult? Function()? ispasswordMatched,
    TResult? Function()? sendPasswordResetMail,
  }) {
    return sendPasswordResetMail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String passwordStr)? confirmpasswordChanged,
    TResult Function()? regWithEmailAndPass,
    TResult Function()? signinWithEmailansPassword,
    TResult Function()? ispasswordMatched,
    TResult Function()? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (sendPasswordResetMail != null) {
      return sendPasswordResetMail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmpasswordChanged,
    required TResult Function(_RegWithEmailAndPassword value)
        regWithEmailAndPass,
    required TResult Function(_SignInWithEmailAndPassword value)
        signinWithEmailansPassword,
    required TResult Function(_IsPasswordMatched value) ispasswordMatched,
    required TResult Function(_PasswordResetMail value) sendPasswordResetMail,
  }) {
    return sendPasswordResetMail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult? Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult? Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult? Function(_PasswordResetMail value)? sendPasswordResetMail,
  }) {
    return sendPasswordResetMail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmpasswordChanged,
    TResult Function(_RegWithEmailAndPassword value)? regWithEmailAndPass,
    TResult Function(_SignInWithEmailAndPassword value)?
        signinWithEmailansPassword,
    TResult Function(_IsPasswordMatched value)? ispasswordMatched,
    TResult Function(_PasswordResetMail value)? sendPasswordResetMail,
    required TResult orElse(),
  }) {
    if (sendPasswordResetMail != null) {
      return sendPasswordResetMail(this);
    }
    return orElse();
  }
}

abstract class _PasswordResetMail implements AuthEvent {
  const factory _PasswordResetMail() = _$_PasswordResetMail;
}

/// @nodoc
mixin _$AuthState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  bool get isMatched => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get optionSuccessOrFailure =>
      throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      EmailAddress emailAddress,
      Password confirmPassword,
      bool isMatched,
      Password password,
      bool isError,
      Option<Either<Failure, Unit>> optionSuccessOrFailure,
      bool isAuthenticated});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? emailAddress = null,
    Object? confirmPassword = null,
    Object? isMatched = null,
    Object? password = null,
    Object? isError = null,
    Object? optionSuccessOrFailure = null,
    Object? isAuthenticated = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      isMatched: null == isMatched
          ? _value.isMatched
          : isMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      optionSuccessOrFailure: null == optionSuccessOrFailure
          ? _value.optionSuccessOrFailure
          : optionSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      EmailAddress emailAddress,
      Password confirmPassword,
      bool isMatched,
      Password password,
      bool isError,
      Option<Either<Failure, Unit>> optionSuccessOrFailure,
      bool isAuthenticated});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? emailAddress = null,
    Object? confirmPassword = null,
    Object? isMatched = null,
    Object? password = null,
    Object? isError = null,
    Object? optionSuccessOrFailure = null,
    Object? isAuthenticated = null,
  }) {
    return _then(_$_AuthState(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      isMatched: null == isMatched
          ? _value.isMatched
          : isMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      optionSuccessOrFailure: null == optionSuccessOrFailure
          ? _value.optionSuccessOrFailure
          : optionSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.isSubmitting,
      required this.emailAddress,
      required this.confirmPassword,
      required this.isMatched,
      required this.password,
      required this.isError,
      required this.optionSuccessOrFailure,
      required this.isAuthenticated});

  @override
  final bool isSubmitting;
  @override
  final EmailAddress emailAddress;
  @override
  final Password confirmPassword;
  @override
  final bool isMatched;
  @override
  final Password password;
  @override
  final bool isError;
  @override
  final Option<Either<Failure, Unit>> optionSuccessOrFailure;
  @override
  final bool isAuthenticated;

  @override
  String toString() {
    return 'AuthState(isSubmitting: $isSubmitting, emailAddress: $emailAddress, confirmPassword: $confirmPassword, isMatched: $isMatched, password: $password, isError: $isError, optionSuccessOrFailure: $optionSuccessOrFailure, isAuthenticated: $isAuthenticated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isMatched, isMatched) ||
                other.isMatched == isMatched) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.optionSuccessOrFailure, optionSuccessOrFailure) ||
                other.optionSuccessOrFailure == optionSuccessOrFailure) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubmitting,
      emailAddress,
      confirmPassword,
      isMatched,
      password,
      isError,
      optionSuccessOrFailure,
      isAuthenticated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isSubmitting,
      required final EmailAddress emailAddress,
      required final Password confirmPassword,
      required final bool isMatched,
      required final Password password,
      required final bool isError,
      required final Option<Either<Failure, Unit>> optionSuccessOrFailure,
      required final bool isAuthenticated}) = _$_AuthState;

  @override
  bool get isSubmitting;
  @override
  EmailAddress get emailAddress;
  @override
  Password get confirmPassword;
  @override
  bool get isMatched;
  @override
  Password get password;
  @override
  bool get isError;
  @override
  Option<Either<Failure, Unit>> get optionSuccessOrFailure;
  @override
  bool get isAuthenticated;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
