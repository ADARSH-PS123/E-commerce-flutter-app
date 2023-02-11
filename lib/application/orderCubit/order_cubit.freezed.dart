// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderState {
  List<Cart> get cartProducts => throw _privateConstructorUsedError;
  UniqueId get userId => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  CountValueObject get quantity => throw _privateConstructorUsedError;
  Option<Either<AppFailure, Unit>> get optionSuccessFailure =>
      throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {List<Cart> cartProducts,
      UniqueId userId,
      bool isLoaded,
      bool isLoading,
      CountValueObject quantity,
      Option<Either<AppFailure, Unit>> optionSuccessFailure,
      bool isError});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = null,
    Object? userId = null,
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? quantity = null,
    Object? optionSuccessFailure = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      cartProducts: null == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as CountValueObject,
      optionSuccessFailure: null == optionSuccessFailure
          ? _value.optionSuccessFailure
          : optionSuccessFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, Unit>>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderStateCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$_OrderStateCopyWith(
          _$_OrderState value, $Res Function(_$_OrderState) then) =
      __$$_OrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Cart> cartProducts,
      UniqueId userId,
      bool isLoaded,
      bool isLoading,
      CountValueObject quantity,
      Option<Either<AppFailure, Unit>> optionSuccessFailure,
      bool isError});
}

/// @nodoc
class __$$_OrderStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_OrderState>
    implements _$$_OrderStateCopyWith<$Res> {
  __$$_OrderStateCopyWithImpl(
      _$_OrderState _value, $Res Function(_$_OrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = null,
    Object? userId = null,
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? quantity = null,
    Object? optionSuccessFailure = null,
    Object? isError = null,
  }) {
    return _then(_$_OrderState(
      cartProducts: null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as CountValueObject,
      optionSuccessFailure: null == optionSuccessFailure
          ? _value.optionSuccessFailure
          : optionSuccessFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, Unit>>,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OrderState implements _OrderState {
  const _$_OrderState(
      {required final List<Cart> cartProducts,
      required this.userId,
      required this.isLoaded,
      required this.isLoading,
      required this.quantity,
      required this.optionSuccessFailure,
      required this.isError})
      : _cartProducts = cartProducts;

  final List<Cart> _cartProducts;
  @override
  List<Cart> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  @override
  final UniqueId userId;
  @override
  final bool isLoaded;
  @override
  final bool isLoading;
  @override
  final CountValueObject quantity;
  @override
  final Option<Either<AppFailure, Unit>> optionSuccessFailure;
  @override
  final bool isError;

  @override
  String toString() {
    return 'OrderState(cartProducts: $cartProducts, userId: $userId, isLoaded: $isLoaded, isLoading: $isLoading, quantity: $quantity, optionSuccessFailure: $optionSuccessFailure, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderState &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.optionSuccessFailure, optionSuccessFailure) ||
                other.optionSuccessFailure == optionSuccessFailure) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartProducts),
      userId,
      isLoaded,
      isLoading,
      quantity,
      optionSuccessFailure,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      __$$_OrderStateCopyWithImpl<_$_OrderState>(this, _$identity);
}

abstract class _OrderState implements OrderState {
  const factory _OrderState(
      {required final List<Cart> cartProducts,
      required final UniqueId userId,
      required final bool isLoaded,
      required final bool isLoading,
      required final CountValueObject quantity,
      required final Option<Either<AppFailure, Unit>> optionSuccessFailure,
      required final bool isError}) = _$_OrderState;

  @override
  List<Cart> get cartProducts;
  @override
  UniqueId get userId;
  @override
  bool get isLoaded;
  @override
  bool get isLoading;
  @override
  CountValueObject get quantity;
  @override
  Option<Either<AppFailure, Unit>> get optionSuccessFailure;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStateCopyWith<_$_OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
