part of 'main_bloc.dart';

@freezed
class MainState with _$MainState{
   const factory MainState.initial() =_InitialState ;
    const factory MainState.loading() =_LoadingState ;
      const factory MainState.offline() =_OfflineState ;
     
        const factory MainState.authenticated(AppUser appuser) =_AuthState ;
             const factory MainState.notAuthenticated() =_NotAuthState ;
}
