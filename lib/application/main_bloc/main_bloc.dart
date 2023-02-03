import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/Iauth/user.dart';
import 'package:ecommerce/domain/iapp/iapp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:meta/meta.dart';
part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  final Iauth _auth;
  final IAppRepo _appRepo;
  late StreamSubscription internetSubscription;
  MainBloc(this._appRepo, this._auth) : super(const MainState.initial()) {
    on<_GetUserEvent>((event, emit) async {
      emit(const MainState.loading());

      final result = await _auth.getSignedUser();
      final output = result.fold(() {
        return const MainState.notAuthenticated();
      }, (AppUser user) {
        return MainState.authenticated(user);
      });

      emit(output);
    });

// app will show no internet screen automatically when there is no internet connection

    internetSubscription = _appRepo.isOnline().listen(
      (status) {
        if (status == InternetConnectionStatus.connected) {
          print('calling 888888888888');
          add(const MainEvent.getUser());
        } else {
          add(const MainEvent.offlineEmitter());
        }
      },
    );

    on<_OfflineEmitter>((event, emit) async {
      emit(const MainState.offline());
    });

// used to manually update the online status
    on<_OnlineWatcher>((event, emit) async {
      emit(const MainState.loading());
      final result = await _appRepo.onlineStatus();
      if (result == true) {
        add(const MainEvent.getUser());
      } else {
        emit(const MainState.offline());
      }
    });

    on<_SignOutEvent>((event, emit) async {
      await _auth.SignOut();
      emit(const MainState.notAuthenticated());
    });
  }
  @override
  Future<void> close() {
    internetSubscription.cancel();

    return super.close();
  }
}
