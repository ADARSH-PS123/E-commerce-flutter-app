// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'valueFailure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(bool isNull) nullField,
    required TResult Function(String failedValue) notMultiline,
    required TResult Function(String failedValue) notSingleLine,
    required TResult Function(String failedValue) invalidPincode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(bool isNull)? nullField,
    TResult? Function(String failedValue)? notMultiline,
    TResult? Function(String failedValue)? notSingleLine,
    TResult? Function(String failedValue)? invalidPincode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(bool isNull)? nullField,
    TResult Function(String failedValue)? notMultiline,
    TResult Function(String failedValue)? notSingleLine,
    TResult Function(String failedValue)? invalidPincode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidId<T> value) nullField,
    required TResult Function(notMultiline<T> value) notMultiline,
    required TResult Function(notSingleLine<T> value) notSingleLine,
    required TResult Function(Invalidpincode<T> value) invalidPincode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidId<T> value)? nullField,
    TResult? Function(notMultiline<T> value)? notMultiline,
    TResult? Function(notSingleLine<T> value)? notSingleLine,
    TResult? Function(Invalidpincode<T> value)? invalidPincode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidId<T> value)? nullField,
    TResult Function(notMultiline<T> value)? notMultiline,
    TResult Function(notSingleLine<T> value)? notSingleLine,
    TResult Function(Invalidpincode<T> value)? invalidPincode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmail<T>>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidEmail<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(bool isNull) nullField,
    required TResult Function(String failedValue) notMultiline,
    required TResult Function(String failedValue) notSingleLine,
    required TResult Function(String failedValue) invalidPincode,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(bool isNull)? nullField,
    TResult? Function(String failedValue)? notMultiline,
    TResult? Function(String failedValue)? notSingleLine,
    TResult? Function(String failedValue)? invalidPincode,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(bool isNull)? nullField,
    TResult Function(String failedValue)? notMultiline,
    TResult Function(String failedValue)? notSingleLine,
    TResult Function(String failedValue)? invalidPincode,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidId<T> value) nullField,
    required TResult Function(notMultiline<T> value) notMultiline,
    required TResult Function(notSingleLine<T> value) notSingleLine,
    required TResult Function(Invalidpincode<T> value) invalidPincode,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidId<T> value)? nullField,
    TResult? Function(notMultiline<T> value)? notMultiline,
    TResult? Function(notSingleLine<T> value)? notSingleLine,
    TResult? Function(Invalidpincode<T> value)? invalidPincode,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidId<T> value)? nullField,
    TResult Function(notMultiline<T> value)? notMultiline,
    TResult Function(notSingleLine<T> value)? notSingleLine,
    TResult Function(Invalidpincode<T> value)? invalidPincode,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final String failedValue}) =
      _$InvalidEmail<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<T, $Res> {
  factory _$$ShortPasswordCopyWith(
          _$ShortPassword<T> value, $Res Function(_$ShortPassword<T>) then) =
      __$$ShortPasswordCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPassword<T>>
    implements _$$ShortPasswordCopyWith<T, $Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword<T> _value, $Res Function(_$ShortPassword<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$ShortPassword<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T>
    with DiagnosticableTreeMixin
    implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      __$$ShortPasswordCopyWithImpl<T, _$ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(bool isNull) nullField,
    required TResult Function(String failedValue) notMultiline,
    required TResult Function(String failedValue) notSingleLine,
    required TResult Function(String failedValue) invalidPincode,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(bool isNull)? nullField,
    TResult? Function(String failedValue)? notMultiline,
    TResult? Function(String failedValue)? notSingleLine,
    TResult? Function(String failedValue)? invalidPincode,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(bool isNull)? nullField,
    TResult Function(String failedValue)? notMultiline,
    TResult Function(String failedValue)? notSingleLine,
    TResult Function(String failedValue)? invalidPincode,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidId<T> value) nullField,
    required TResult Function(notMultiline<T> value) notMultiline,
    required TResult Function(notSingleLine<T> value) notSingleLine,
    required TResult Function(Invalidpincode<T> value) invalidPincode,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidId<T> value)? nullField,
    TResult? Function(notMultiline<T> value)? notMultiline,
    TResult? Function(notSingleLine<T> value)? notSingleLine,
    TResult? Function(Invalidpincode<T> value)? invalidPincode,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidId<T> value)? nullField,
    TResult Function(notMultiline<T> value)? notMultiline,
    TResult Function(notSingleLine<T> value)? notSingleLine,
    TResult Function(Invalidpincode<T> value)? invalidPincode,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final String failedValue}) =
      _$ShortPassword<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidIdCopyWith<T, $Res> {
  factory _$$_InvalidIdCopyWith(
          _$_InvalidId<T> value, $Res Function(_$_InvalidId<T>) then) =
      __$$_InvalidIdCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isNull});
}

/// @nodoc
class __$$_InvalidIdCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_InvalidId<T>>
    implements _$$_InvalidIdCopyWith<T, $Res> {
  __$$_InvalidIdCopyWithImpl(
      _$_InvalidId<T> _value, $Res Function(_$_InvalidId<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNull = null,
  }) {
    return _then(_$_InvalidId<T>(
      isNull: null == isNull
          ? _value.isNull
          : isNull // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InvalidId<T> with DiagnosticableTreeMixin implements _InvalidId<T> {
  const _$_InvalidId({required this.isNull});

  @override
  final bool isNull;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.nullField(isNull: $isNull)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.nullField'))
      ..add(DiagnosticsProperty('isNull', isNull));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidId<T> &&
            (identical(other.isNull, isNull) || other.isNull == isNull));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNull);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidIdCopyWith<T, _$_InvalidId<T>> get copyWith =>
      __$$_InvalidIdCopyWithImpl<T, _$_InvalidId<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(bool isNull) nullField,
    required TResult Function(String failedValue) notMultiline,
    required TResult Function(String failedValue) notSingleLine,
    required TResult Function(String failedValue) invalidPincode,
  }) {
    return nullField(isNull);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(bool isNull)? nullField,
    TResult? Function(String failedValue)? notMultiline,
    TResult? Function(String failedValue)? notSingleLine,
    TResult? Function(String failedValue)? invalidPincode,
  }) {
    return nullField?.call(isNull);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(bool isNull)? nullField,
    TResult Function(String failedValue)? notMultiline,
    TResult Function(String failedValue)? notSingleLine,
    TResult Function(String failedValue)? invalidPincode,
    required TResult orElse(),
  }) {
    if (nullField != null) {
      return nullField(isNull);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidId<T> value) nullField,
    required TResult Function(notMultiline<T> value) notMultiline,
    required TResult Function(notSingleLine<T> value) notSingleLine,
    required TResult Function(Invalidpincode<T> value) invalidPincode,
  }) {
    return nullField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidId<T> value)? nullField,
    TResult? Function(notMultiline<T> value)? notMultiline,
    TResult? Function(notSingleLine<T> value)? notSingleLine,
    TResult? Function(Invalidpincode<T> value)? invalidPincode,
  }) {
    return nullField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidId<T> value)? nullField,
    TResult Function(notMultiline<T> value)? notMultiline,
    TResult Function(notSingleLine<T> value)? notSingleLine,
    TResult Function(Invalidpincode<T> value)? invalidPincode,
    required TResult orElse(),
  }) {
    if (nullField != null) {
      return nullField(this);
    }
    return orElse();
  }
}

abstract class _InvalidId<T> implements ValueFailure<T> {
  const factory _InvalidId({required final bool isNull}) = _$_InvalidId<T>;

  bool get isNull;
  @JsonKey(ignore: true)
  _$$_InvalidIdCopyWith<T, _$_InvalidId<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$notMultilineCopyWith<T, $Res> {
  factory _$$notMultilineCopyWith(
          _$notMultiline<T> value, $Res Function(_$notMultiline<T>) then) =
      __$$notMultilineCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$notMultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$notMultiline<T>>
    implements _$$notMultilineCopyWith<T, $Res> {
  __$$notMultilineCopyWithImpl(
      _$notMultiline<T> _value, $Res Function(_$notMultiline<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$notMultiline<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$notMultiline<T>
    with DiagnosticableTreeMixin
    implements notMultiline<T> {
  const _$notMultiline({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.notMultiline(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.notMultiline'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$notMultiline<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$notMultilineCopyWith<T, _$notMultiline<T>> get copyWith =>
      __$$notMultilineCopyWithImpl<T, _$notMultiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(bool isNull) nullField,
    required TResult Function(String failedValue) notMultiline,
    required TResult Function(String failedValue) notSingleLine,
    required TResult Function(String failedValue) invalidPincode,
  }) {
    return notMultiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(bool isNull)? nullField,
    TResult? Function(String failedValue)? notMultiline,
    TResult? Function(String failedValue)? notSingleLine,
    TResult? Function(String failedValue)? invalidPincode,
  }) {
    return notMultiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(bool isNull)? nullField,
    TResult Function(String failedValue)? notMultiline,
    TResult Function(String failedValue)? notSingleLine,
    TResult Function(String failedValue)? invalidPincode,
    required TResult orElse(),
  }) {
    if (notMultiline != null) {
      return notMultiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidId<T> value) nullField,
    required TResult Function(notMultiline<T> value) notMultiline,
    required TResult Function(notSingleLine<T> value) notSingleLine,
    required TResult Function(Invalidpincode<T> value) invalidPincode,
  }) {
    return notMultiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidId<T> value)? nullField,
    TResult? Function(notMultiline<T> value)? notMultiline,
    TResult? Function(notSingleLine<T> value)? notSingleLine,
    TResult? Function(Invalidpincode<T> value)? invalidPincode,
  }) {
    return notMultiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidId<T> value)? nullField,
    TResult Function(notMultiline<T> value)? notMultiline,
    TResult Function(notSingleLine<T> value)? notSingleLine,
    TResult Function(Invalidpincode<T> value)? invalidPincode,
    required TResult orElse(),
  }) {
    if (notMultiline != null) {
      return notMultiline(this);
    }
    return orElse();
  }
}

abstract class notMultiline<T> implements ValueFailure<T> {
  const factory notMultiline({required final String failedValue}) =
      _$notMultiline<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$$notMultilineCopyWith<T, _$notMultiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$notSingleLineCopyWith<T, $Res> {
  factory _$$notSingleLineCopyWith(
          _$notSingleLine<T> value, $Res Function(_$notSingleLine<T>) then) =
      __$$notSingleLineCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$notSingleLineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$notSingleLine<T>>
    implements _$$notSingleLineCopyWith<T, $Res> {
  __$$notSingleLineCopyWithImpl(
      _$notSingleLine<T> _value, $Res Function(_$notSingleLine<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$notSingleLine<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$notSingleLine<T>
    with DiagnosticableTreeMixin
    implements notSingleLine<T> {
  const _$notSingleLine({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.notSingleLine(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.notSingleLine'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$notSingleLine<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$notSingleLineCopyWith<T, _$notSingleLine<T>> get copyWith =>
      __$$notSingleLineCopyWithImpl<T, _$notSingleLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(bool isNull) nullField,
    required TResult Function(String failedValue) notMultiline,
    required TResult Function(String failedValue) notSingleLine,
    required TResult Function(String failedValue) invalidPincode,
  }) {
    return notSingleLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(bool isNull)? nullField,
    TResult? Function(String failedValue)? notMultiline,
    TResult? Function(String failedValue)? notSingleLine,
    TResult? Function(String failedValue)? invalidPincode,
  }) {
    return notSingleLine?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(bool isNull)? nullField,
    TResult Function(String failedValue)? notMultiline,
    TResult Function(String failedValue)? notSingleLine,
    TResult Function(String failedValue)? invalidPincode,
    required TResult orElse(),
  }) {
    if (notSingleLine != null) {
      return notSingleLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidId<T> value) nullField,
    required TResult Function(notMultiline<T> value) notMultiline,
    required TResult Function(notSingleLine<T> value) notSingleLine,
    required TResult Function(Invalidpincode<T> value) invalidPincode,
  }) {
    return notSingleLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidId<T> value)? nullField,
    TResult? Function(notMultiline<T> value)? notMultiline,
    TResult? Function(notSingleLine<T> value)? notSingleLine,
    TResult? Function(Invalidpincode<T> value)? invalidPincode,
  }) {
    return notSingleLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidId<T> value)? nullField,
    TResult Function(notMultiline<T> value)? notMultiline,
    TResult Function(notSingleLine<T> value)? notSingleLine,
    TResult Function(Invalidpincode<T> value)? invalidPincode,
    required TResult orElse(),
  }) {
    if (notSingleLine != null) {
      return notSingleLine(this);
    }
    return orElse();
  }
}

abstract class notSingleLine<T> implements ValueFailure<T> {
  const factory notSingleLine({required final String failedValue}) =
      _$notSingleLine<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$$notSingleLineCopyWith<T, _$notSingleLine<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidpincodeCopyWith<T, $Res> {
  factory _$$InvalidpincodeCopyWith(
          _$Invalidpincode<T> value, $Res Function(_$Invalidpincode<T>) then) =
      __$$InvalidpincodeCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidpincodeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$Invalidpincode<T>>
    implements _$$InvalidpincodeCopyWith<T, $Res> {
  __$$InvalidpincodeCopyWithImpl(
      _$Invalidpincode<T> _value, $Res Function(_$Invalidpincode<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$Invalidpincode<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Invalidpincode<T>
    with DiagnosticableTreeMixin
    implements Invalidpincode<T> {
  const _$Invalidpincode({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPincode(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPincode'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Invalidpincode<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidpincodeCopyWith<T, _$Invalidpincode<T>> get copyWith =>
      __$$InvalidpincodeCopyWithImpl<T, _$Invalidpincode<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(bool isNull) nullField,
    required TResult Function(String failedValue) notMultiline,
    required TResult Function(String failedValue) notSingleLine,
    required TResult Function(String failedValue) invalidPincode,
  }) {
    return invalidPincode(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortPassword,
    TResult? Function(bool isNull)? nullField,
    TResult? Function(String failedValue)? notMultiline,
    TResult? Function(String failedValue)? notSingleLine,
    TResult? Function(String failedValue)? invalidPincode,
  }) {
    return invalidPincode?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(bool isNull)? nullField,
    TResult Function(String failedValue)? notMultiline,
    TResult Function(String failedValue)? notSingleLine,
    TResult Function(String failedValue)? invalidPincode,
    required TResult orElse(),
  }) {
    if (invalidPincode != null) {
      return invalidPincode(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(_InvalidId<T> value) nullField,
    required TResult Function(notMultiline<T> value) notMultiline,
    required TResult Function(notSingleLine<T> value) notSingleLine,
    required TResult Function(Invalidpincode<T> value) invalidPincode,
  }) {
    return invalidPincode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(_InvalidId<T> value)? nullField,
    TResult? Function(notMultiline<T> value)? notMultiline,
    TResult? Function(notSingleLine<T> value)? notSingleLine,
    TResult? Function(Invalidpincode<T> value)? invalidPincode,
  }) {
    return invalidPincode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(_InvalidId<T> value)? nullField,
    TResult Function(notMultiline<T> value)? notMultiline,
    TResult Function(notSingleLine<T> value)? notSingleLine,
    TResult Function(Invalidpincode<T> value)? invalidPincode,
    required TResult orElse(),
  }) {
    if (invalidPincode != null) {
      return invalidPincode(this);
    }
    return orElse();
  }
}

abstract class Invalidpincode<T> implements ValueFailure<T> {
  const factory Invalidpincode({required final String failedValue}) =
      _$Invalidpincode<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidpincodeCopyWith<T, _$Invalidpincode<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
