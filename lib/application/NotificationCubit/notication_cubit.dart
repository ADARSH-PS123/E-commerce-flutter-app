import 'dart:async';
import 'dart:developer';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iPaymentNotificationRepo/iPaymentNotificationRepo.dart';
import 'package:ecommerce/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notication_state.dart';
part 'notication_cubit.freezed.dart';

@injectable
class NoticationCubit extends Cubit<NoticationState> {
  final IPaymentRepo _paymentRepo;
  late StreamSubscription forgroundMessageSubscription;

  NoticationCubit(this._paymentRepo) : super(NoticationState.initial());
  sendMessageToken() async {
   // send message request to firebase server only when the user granted the permission for local notification
    if(state.isNotificationPermissionGranted == true){
 final result = await _paymentRepo.sendMessage();
    final out = result.fold((appFailue) => state.copyWith(isLoadFailed: true),
        (r) => state.copyWith(isLoadSuccess: true));
    log(out.toString());
    emit(out);
    }
   
  }

  void getNotificationPermission() async {
// get permission
// initialize settings
// listen for message from firebase messaging
    final status = await _paymentRepo.getNotificationPermission();
 

    if (status != null && status == true) {
      _paymentRepo.notificationPluginInitialiization();
      emit(state.copyWith(isNotificationPermissionGranted: true));
      if (!state.isListening) {
      
        listenFirebaseMessage();
      }
    }
  }

  listenFirebaseMessage() {
    emit(state.copyWith(isListening: true));
    forgroundMessageSubscription = FirebaseMessaging.onMessage.listen(
      (msg) {
        final notification = msg.notification;
        final data = msg.notification!.android;
        if (notification != null && data != null) {
          _paymentRepo.sendNotification(
              title: 'Order Status', body: 'Order Success');
        }
      },
    );
  }

/* final backgroundMessageSubscription = FirebaseMessaging.onMessageOpenedApp.listen((msg) {
  print("++++++++++++");
final notification = msg.notification;
final data = msg.notification!.android;
if(notification !=null && data != null){
  flutterLocalNotificationsPlugin.show(notification.hashCode, notification.title, notification.body, NotificationDetails(
    android: AndroidNotificationDetails(channel.id, channel.name,channelDescription: channel.description,playSound: true,icon: '@mipmap/ic_launcher')
  ));
}
},); */

  @override
  Future<void> close() {
    forgroundMessageSubscription.cancel();
    return super.close();
  }
}
