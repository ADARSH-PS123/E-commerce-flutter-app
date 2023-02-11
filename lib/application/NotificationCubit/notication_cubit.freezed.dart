// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notication_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoticationState {
  bool get isListening => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadSuccess => throw _privateConstructorUsedError;
  bool get isLoadFailed => throw _privateConstructorUsedError;
  bool get isNotificationPermissionGranted =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoticationStateCopyWith<NoticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticationStateCopyWith<$Res> {
  factory $NoticationStateCopyWith(
          NoticationState value, $Res Function(NoticationState) then) =
      _$NoticationStateCopyWithImpl<$Res, NoticationState>;
  @useResult
  $Res call(
      {bool isListening,
      bool isLoading,
      bool isLoadSuccess,
      bool isLoadFailed,
      bool isNotificationPermissionGranted});
}

/// @nodoc
class _$NoticationStateCopyWithImpl<$Res, $Val extends NoticationState>
    implements $NoticationStateCopyWith<$Res> {
  _$NoticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListening = null,
    Object? isLoading = null,
    Object? isLoadSuccess = null,
    Object? isLoadFailed = null,
    Object? isNotificationPermissionGranted = null,
  }) {
    return _then(_value.copyWith(
      isListening: null == isListening
          ? _value.isListening
          : isListening // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadSuccess: null == isLoadSuccess
          ? _value.isLoadSuccess
          : isLoadSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadFailed: null == isLoadFailed
          ? _value.isLoadFailed
          : isLoadFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotificationPermissionGranted: null == isNotificationPermissionGranted
          ? _value.isNotificationPermissionGranted
          : isNotificationPermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationStateCopyWith<$Res>
    implements $NoticationStateCopyWith<$Res> {
  factory _$$_NotificationStateCopyWith(_$_NotificationState value,
          $Res Function(_$_NotificationState) then) =
      __$$_NotificationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isListening,
      bool isLoading,
      bool isLoadSuccess,
      bool isLoadFailed,
      bool isNotificationPermissionGranted});
}

/// @nodoc
class __$$_NotificationStateCopyWithImpl<$Res>
    extends _$NoticationStateCopyWithImpl<$Res, _$_NotificationState>
    implements _$$_NotificationStateCopyWith<$Res> {
  __$$_NotificationStateCopyWithImpl(
      _$_NotificationState _value, $Res Function(_$_NotificationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListening = null,
    Object? isLoading = null,
    Object? isLoadSuccess = null,
    Object? isLoadFailed = null,
    Object? isNotificationPermissionGranted = null,
  }) {
    return _then(_$_NotificationState(
      isListening: null == isListening
          ? _value.isListening
          : isListening // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadSuccess: null == isLoadSuccess
          ? _value.isLoadSuccess
          : isLoadSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadFailed: null == isLoadFailed
          ? _value.isLoadFailed
          : isLoadFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotificationPermissionGranted: null == isNotificationPermissionGranted
          ? _value.isNotificationPermissionGranted
          : isNotificationPermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NotificationState implements _NotificationState {
  _$_NotificationState(
      {required this.isListening,
      required this.isLoading,
      required this.isLoadSuccess,
      required this.isLoadFailed,
      required this.isNotificationPermissionGranted});

  @override
  final bool isListening;
  @override
  final bool isLoading;
  @override
  final bool isLoadSuccess;
  @override
  final bool isLoadFailed;
  @override
  final bool isNotificationPermissionGranted;

  @override
  String toString() {
    return 'NoticationState(isListening: $isListening, isLoading: $isLoading, isLoadSuccess: $isLoadSuccess, isLoadFailed: $isLoadFailed, isNotificationPermissionGranted: $isNotificationPermissionGranted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationState &&
            (identical(other.isListening, isListening) ||
                other.isListening == isListening) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadSuccess, isLoadSuccess) ||
                other.isLoadSuccess == isLoadSuccess) &&
            (identical(other.isLoadFailed, isLoadFailed) ||
                other.isLoadFailed == isLoadFailed) &&
            (identical(other.isNotificationPermissionGranted,
                    isNotificationPermissionGranted) ||
                other.isNotificationPermissionGranted ==
                    isNotificationPermissionGranted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isListening, isLoading,
      isLoadSuccess, isLoadFailed, isNotificationPermissionGranted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      __$$_NotificationStateCopyWithImpl<_$_NotificationState>(
          this, _$identity);
}

abstract class _NotificationState implements NoticationState {
  factory _NotificationState(
          {required final bool isListening,
          required final bool isLoading,
          required final bool isLoadSuccess,
          required final bool isLoadFailed,
          required final bool isNotificationPermissionGranted}) =
      _$_NotificationState;

  @override
  bool get isListening;
  @override
  bool get isLoading;
  @override
  bool get isLoadSuccess;
  @override
  bool get isLoadFailed;
  @override
  bool get isNotificationPermissionGranted;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
