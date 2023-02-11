part of 'notication_cubit.dart';

@freezed
class NoticationState with _$NoticationState {
   factory NoticationState({
required bool isListening,
required bool isLoading,
required bool isLoadSuccess,
required bool isLoadFailed,
required bool isNotificationPermissionGranted
   }) = _NotificationState;
   factory NoticationState.initial(
    
  ) {
return NoticationState(isListening: false, isLoading: false, isLoadFailed: false, isLoadSuccess: false, isNotificationPermissionGranted: false);
  }
 



}
