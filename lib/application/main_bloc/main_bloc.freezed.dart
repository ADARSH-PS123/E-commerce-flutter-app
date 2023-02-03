// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() signOut,
    required TResult Function() onlinewatcher,
    required TResult Function() offlineEmitter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? signOut,
    TResult? Function()? onlinewatcher,
    TResult? Function()? offlineEmitter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? signOut,
    TResult Function()? onlinewatcher,
    TResult Function()? offlineEmitter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_OnlineWatcher value) onlinewatcher,
    required TResult Function(_OfflineEmitter value) offlineEmitter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_OnlineWatcher value)? onlinewatcher,
    TResult? Function(_OfflineEmitter value)? offlineEmitter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_OnlineWatcher value)? onlinewatcher,
    TResult Function(_OfflineEmitter value)? offlineEmitter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetUserEventCopyWith<$Res> {
  factory _$$_GetUserEventCopyWith(
          _$_GetUserEvent value, $Res Function(_$_GetUserEvent) then) =
      __$$_GetUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetUserEventCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_GetUserEvent>
    implements _$$_GetUserEventCopyWith<$Res> {
  __$$_GetUserEventCopyWithImpl(
      _$_GetUserEvent _value, $Res Function(_$_GetUserEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetUserEvent implements _GetUserEvent {
  const _$_GetUserEvent();

  @override
  String toString() {
    return 'MainEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() signOut,
    required TResult Function() onlinewatcher,
    required TResult Function() offlineEmitter,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? signOut,
    TResult? Function()? onlinewatcher,
    TResult? Function()? offlineEmitter,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? signOut,
    TResult Function()? onlinewatcher,
    TResult Function()? offlineEmitter,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_OnlineWatcher value) onlinewatcher,
    required TResult Function(_OfflineEmitter value) offlineEmitter,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_OnlineWatcher value)? onlinewatcher,
    TResult? Function(_OfflineEmitter value)? offlineEmitter,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_OnlineWatcher value)? onlinewatcher,
    TResult Function(_OfflineEmitter value)? offlineEmitter,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUserEvent implements MainEvent {
  const factory _GetUserEvent() = _$_GetUserEvent;
}

/// @nodoc
abstract class _$$_SignOutEventCopyWith<$Res> {
  factory _$$_SignOutEventCopyWith(
          _$_SignOutEvent value, $Res Function(_$_SignOutEvent) then) =
      __$$_SignOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutEventCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_SignOutEvent>
    implements _$$_SignOutEventCopyWith<$Res> {
  __$$_SignOutEventCopyWithImpl(
      _$_SignOutEvent _value, $Res Function(_$_SignOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOutEvent implements _SignOutEvent {
  const _$_SignOutEvent();

  @override
  String toString() {
    return 'MainEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() signOut,
    required TResult Function() onlinewatcher,
    required TResult Function() offlineEmitter,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? signOut,
    TResult? Function()? onlinewatcher,
    TResult? Function()? offlineEmitter,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? signOut,
    TResult Function()? onlinewatcher,
    TResult Function()? offlineEmitter,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_OnlineWatcher value) onlinewatcher,
    required TResult Function(_OfflineEmitter value) offlineEmitter,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_OnlineWatcher value)? onlinewatcher,
    TResult? Function(_OfflineEmitter value)? offlineEmitter,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_OnlineWatcher value)? onlinewatcher,
    TResult Function(_OfflineEmitter value)? offlineEmitter,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOutEvent implements MainEvent {
  const factory _SignOutEvent() = _$_SignOutEvent;
}

/// @nodoc
abstract class _$$_OnlineWatcherCopyWith<$Res> {
  factory _$$_OnlineWatcherCopyWith(
          _$_OnlineWatcher value, $Res Function(_$_OnlineWatcher) then) =
      __$$_OnlineWatcherCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnlineWatcherCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_OnlineWatcher>
    implements _$$_OnlineWatcherCopyWith<$Res> {
  __$$_OnlineWatcherCopyWithImpl(
      _$_OnlineWatcher _value, $Res Function(_$_OnlineWatcher) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnlineWatcher implements _OnlineWatcher {
  const _$_OnlineWatcher();

  @override
  String toString() {
    return 'MainEvent.onlinewatcher()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnlineWatcher);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() signOut,
    required TResult Function() onlinewatcher,
    required TResult Function() offlineEmitter,
  }) {
    return onlinewatcher();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? signOut,
    TResult? Function()? onlinewatcher,
    TResult? Function()? offlineEmitter,
  }) {
    return onlinewatcher?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? signOut,
    TResult Function()? onlinewatcher,
    TResult Function()? offlineEmitter,
    required TResult orElse(),
  }) {
    if (onlinewatcher != null) {
      return onlinewatcher();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_OnlineWatcher value) onlinewatcher,
    required TResult Function(_OfflineEmitter value) offlineEmitter,
  }) {
    return onlinewatcher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_OnlineWatcher value)? onlinewatcher,
    TResult? Function(_OfflineEmitter value)? offlineEmitter,
  }) {
    return onlinewatcher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_OnlineWatcher value)? onlinewatcher,
    TResult Function(_OfflineEmitter value)? offlineEmitter,
    required TResult orElse(),
  }) {
    if (onlinewatcher != null) {
      return onlinewatcher(this);
    }
    return orElse();
  }
}

abstract class _OnlineWatcher implements MainEvent {
  const factory _OnlineWatcher() = _$_OnlineWatcher;
}

/// @nodoc
abstract class _$$_OfflineEmitterCopyWith<$Res> {
  factory _$$_OfflineEmitterCopyWith(
          _$_OfflineEmitter value, $Res Function(_$_OfflineEmitter) then) =
      __$$_OfflineEmitterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OfflineEmitterCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$_OfflineEmitter>
    implements _$$_OfflineEmitterCopyWith<$Res> {
  __$$_OfflineEmitterCopyWithImpl(
      _$_OfflineEmitter _value, $Res Function(_$_OfflineEmitter) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OfflineEmitter implements _OfflineEmitter {
  const _$_OfflineEmitter();

  @override
  String toString() {
    return 'MainEvent.offlineEmitter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OfflineEmitter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function() signOut,
    required TResult Function() onlinewatcher,
    required TResult Function() offlineEmitter,
  }) {
    return offlineEmitter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function()? signOut,
    TResult? Function()? onlinewatcher,
    TResult? Function()? offlineEmitter,
  }) {
    return offlineEmitter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function()? signOut,
    TResult Function()? onlinewatcher,
    TResult Function()? offlineEmitter,
    required TResult orElse(),
  }) {
    if (offlineEmitter != null) {
      return offlineEmitter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_SignOutEvent value) signOut,
    required TResult Function(_OnlineWatcher value) onlinewatcher,
    required TResult Function(_OfflineEmitter value) offlineEmitter,
  }) {
    return offlineEmitter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_SignOutEvent value)? signOut,
    TResult? Function(_OnlineWatcher value)? onlinewatcher,
    TResult? Function(_OfflineEmitter value)? offlineEmitter,
  }) {
    return offlineEmitter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_SignOutEvent value)? signOut,
    TResult Function(_OnlineWatcher value)? onlinewatcher,
    TResult Function(_OfflineEmitter value)? offlineEmitter,
    required TResult orElse(),
  }) {
    if (offlineEmitter != null) {
      return offlineEmitter(this);
    }
    return orElse();
  }
}

abstract class _OfflineEmitter implements MainEvent {
  const factory _OfflineEmitter() = _$_OfflineEmitter;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() offline,
    required TResult Function(AppUser appuser) authenticated,
    required TResult Function() notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function(AppUser appuser)? authenticated,
    TResult? Function()? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? offline,
    TResult Function(AppUser appuser)? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OfflineState value) offline,
    required TResult Function(_AuthState value) authenticated,
    required TResult Function(_NotAuthState value) notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OfflineState value)? offline,
    TResult? Function(_AuthState value)? authenticated,
    TResult? Function(_NotAuthState value)? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OfflineState value)? offline,
    TResult Function(_AuthState value)? authenticated,
    TResult Function(_NotAuthState value)? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'MainState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() offline,
    required TResult Function(AppUser appuser) authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function(AppUser appuser)? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? offline,
    TResult Function(AppUser appuser)? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OfflineState value) offline,
    required TResult Function(_AuthState value) authenticated,
    required TResult Function(_NotAuthState value) notAuthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OfflineState value)? offline,
    TResult? Function(_AuthState value)? authenticated,
    TResult? Function(_NotAuthState value)? notAuthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OfflineState value)? offline,
    TResult Function(_AuthState value)? authenticated,
    TResult Function(_NotAuthState value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements MainState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() offline,
    required TResult Function(AppUser appuser) authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function(AppUser appuser)? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? offline,
    TResult Function(AppUser appuser)? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OfflineState value) offline,
    required TResult Function(_AuthState value) authenticated,
    required TResult Function(_NotAuthState value) notAuthenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OfflineState value)? offline,
    TResult? Function(_AuthState value)? authenticated,
    TResult? Function(_NotAuthState value)? notAuthenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OfflineState value)? offline,
    TResult Function(_AuthState value)? authenticated,
    TResult Function(_NotAuthState value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements MainState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_OfflineStateCopyWith<$Res> {
  factory _$$_OfflineStateCopyWith(
          _$_OfflineState value, $Res Function(_$_OfflineState) then) =
      __$$_OfflineStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OfflineStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_OfflineState>
    implements _$$_OfflineStateCopyWith<$Res> {
  __$$_OfflineStateCopyWithImpl(
      _$_OfflineState _value, $Res Function(_$_OfflineState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OfflineState implements _OfflineState {
  const _$_OfflineState();

  @override
  String toString() {
    return 'MainState.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OfflineState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() offline,
    required TResult Function(AppUser appuser) authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function(AppUser appuser)? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? offline,
    TResult Function(AppUser appuser)? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OfflineState value) offline,
    required TResult Function(_AuthState value) authenticated,
    required TResult Function(_NotAuthState value) notAuthenticated,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OfflineState value)? offline,
    TResult? Function(_AuthState value)? authenticated,
    TResult? Function(_NotAuthState value)? notAuthenticated,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OfflineState value)? offline,
    TResult Function(_AuthState value)? authenticated,
    TResult Function(_NotAuthState value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _OfflineState implements MainState {
  const factory _OfflineState() = _$_OfflineState;
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser appuser});

  $AppUserCopyWith<$Res> get appuser;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appuser = null,
  }) {
    return _then(_$_AuthState(
      null == appuser
          ? _value.appuser
          : appuser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appuser {
    return $AppUserCopyWith<$Res>(_value.appuser, (value) {
      return _then(_value.copyWith(appuser: value));
    });
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(this.appuser);

  @override
  final AppUser appuser;

  @override
  String toString() {
    return 'MainState.authenticated(appuser: $appuser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.appuser, appuser) || other.appuser == appuser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appuser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() offline,
    required TResult Function(AppUser appuser) authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return authenticated(appuser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function(AppUser appuser)? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return authenticated?.call(appuser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? offline,
    TResult Function(AppUser appuser)? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(appuser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OfflineState value) offline,
    required TResult Function(_AuthState value) authenticated,
    required TResult Function(_NotAuthState value) notAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OfflineState value)? offline,
    TResult? Function(_AuthState value)? authenticated,
    TResult? Function(_NotAuthState value)? notAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OfflineState value)? offline,
    TResult Function(_AuthState value)? authenticated,
    TResult Function(_NotAuthState value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthState implements MainState {
  const factory _AuthState(final AppUser appuser) = _$_AuthState;

  AppUser get appuser;
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotAuthStateCopyWith<$Res> {
  factory _$$_NotAuthStateCopyWith(
          _$_NotAuthState value, $Res Function(_$_NotAuthState) then) =
      __$$_NotAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotAuthStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_NotAuthState>
    implements _$$_NotAuthStateCopyWith<$Res> {
  __$$_NotAuthStateCopyWithImpl(
      _$_NotAuthState _value, $Res Function(_$_NotAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotAuthState implements _NotAuthState {
  const _$_NotAuthState();

  @override
  String toString() {
    return 'MainState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() offline,
    required TResult Function(AppUser appuser) authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? offline,
    TResult? Function(AppUser appuser)? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? offline,
    TResult Function(AppUser appuser)? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_OfflineState value) offline,
    required TResult Function(_AuthState value) authenticated,
    required TResult Function(_NotAuthState value) notAuthenticated,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_OfflineState value)? offline,
    TResult? Function(_AuthState value)? authenticated,
    TResult? Function(_NotAuthState value)? notAuthenticated,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_OfflineState value)? offline,
    TResult Function(_AuthState value)? authenticated,
    TResult Function(_NotAuthState value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthState implements MainState {
  const factory _NotAuthState() = _$_NotAuthState;
}
