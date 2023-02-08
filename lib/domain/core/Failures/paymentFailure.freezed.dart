// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paymentFailure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentFailure<T> {
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentFailureCopyWith<T, PaymentFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFailureCopyWith<T, $Res> {
  factory $PaymentFailureCopyWith(
          PaymentFailure<T> value, $Res Function(PaymentFailure<T>) then) =
      _$PaymentFailureCopyWithImpl<T, $Res, PaymentFailure<T>>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$PaymentFailureCopyWithImpl<T, $Res, $Val extends PaymentFailure<T>>
    implements $PaymentFailureCopyWith<T, $Res> {
  _$PaymentFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentFailureCopyWith<T, $Res>
    implements $PaymentFailureCopyWith<T, $Res> {
  factory _$$_PaymentFailureCopyWith(_$_PaymentFailure<T> value,
          $Res Function(_$_PaymentFailure<T>) then) =
      __$$_PaymentFailureCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_PaymentFailureCopyWithImpl<T, $Res>
    extends _$PaymentFailureCopyWithImpl<T, $Res, _$_PaymentFailure<T>>
    implements _$$_PaymentFailureCopyWith<T, $Res> {
  __$$_PaymentFailureCopyWithImpl(
      _$_PaymentFailure<T> _value, $Res Function(_$_PaymentFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_PaymentFailure<T>(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentFailure<T> implements _PaymentFailure<T> {
  const _$_PaymentFailure({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PaymentFailure<$T>(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentFailure<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentFailureCopyWith<T, _$_PaymentFailure<T>> get copyWith =>
      __$$_PaymentFailureCopyWithImpl<T, _$_PaymentFailure<T>>(
          this, _$identity);
}

abstract class _PaymentFailure<T> implements PaymentFailure<T> {
  const factory _PaymentFailure({required final String errorMessage}) =
      _$_PaymentFailure<T>;

  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentFailureCopyWith<T, _$_PaymentFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
