part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent{
  const factory MainEvent.getUser() = _GetUserEvent;
    const factory MainEvent.signOut() = _SignOutEvent;
       const factory MainEvent.onlinewatcher() = _OnlineWatcher;
       const factory MainEvent.offlineEmitter() = _OfflineEmitter;
}
