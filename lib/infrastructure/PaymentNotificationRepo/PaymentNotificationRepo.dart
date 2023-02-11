import 'dart:convert';
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/Failures/paymentFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce/core/constants.dart';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/iPaymentNotificationRepo/iPaymentNotificationRepo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IPaymentRepo)
class PaymentRepo implements IPaymentRepo {
   final FirebaseMessaging _messaging = FirebaseMessaging.instance;
   final FlutterLocalNotificationsPlugin _localNotificationsPlugin = FlutterLocalNotificationsPlugin();

  
  @override
  Future<bool?>getNotificationPermission() async{
 final result =  await _localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .requestPermission();
        return result;
  }

  @override
  void notificationPluginInitialiization() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    InitializationSettings initializationSettings =
        const InitializationSettings(android: initializationSettingsAndroid);

    await _localNotificationsPlugin.initialize(
      initializationSettings,onDidReceiveNotificationResponse: (details) {
        
      },
    );
  }

  @override
  Future<void> sendNotification(
      {int? id, required String title, required String body}) async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails('channel_id', 'channel_name',
            priority: Priority.high, importance: Importance.high);
    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
  await  _localNotificationsPlugin.show(1, title, body, notificationDetails);
  }

  @override
  Future<Either<PaymentFailure, Unit>> initPaymentSheet() async {
   
    try {
      // 1. create payment intent on the server
      final data = await createPaymentIntent('100', 'INR');

      // 2. initialize the payment sheet
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          // Main params
          merchantDisplayName: 'Flutter Stripe Store Demo',
          paymentIntentClientSecret: data!['client_secret'],
          // Customer keys
          customerEphemeralKeySecret: data['ephemeralKey'],
          customerId: data!['customer'],
          // Extra options

          style: ThemeMode.dark,
        ),
      );

      await Stripe.instance.presentPaymentSheet();
      return const Right(unit);
    } catch (e) {
      return const Left(
          PaymentFailure(errorMessage: 'Error occured or User canceled'));
    }
  }

  createPaymentIntent(String amount, String currency) async {
    try {
      //Request body
      Map<String, dynamic> body = {
        'amount': amount,
        'currency': currency,
        'payment_method_types[]': 'card',
        "description": "Software development services",
      };

      //Make post request to Stripe

      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization': 'Bearer $secretKey',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: body,
      );
      log(response.body);
      return json.decode(response.body);
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> sendMessage() async {
    try {
      // for android 13 ,app needs  notification permission
      /* final notificationPermission = await _messaging.requestPermission(
          alert: true, sound: true, announcement: false); */

     
        String? deviceToken = await _messaging.getToken();
        if (deviceToken != null) {
          log(deviceToken);

          final result =
              await http.post(Uri.parse('https://fcm.googleapis.com/fcm/send'),
                  headers: <String, String>{
                    'Content-Type': 'application/json',
                    'Authorization': 'key=$cloudMessageServerKey'
                  },
                  body: jsonEncode(<String, dynamic>{
                    'priority': 'high',
                    'data': <String, dynamic>{
                      'click_action': "Flutter_Notification_Click",
                      'status': 'done',
                      'body': 'Order success',
                      'title': "order status"
                    },
                    'notification': <String, dynamic>{
                      'body': 'Order success',
                      'title': "order status",
                      'android_channel': "2"
                    },
                    'to': deviceToken
                  }));
         

          return const Right(unit);
        } else {
          // exicutes when there is no playstore installed on the device
          return const Left(AppFailure.unableToUpdate());
        }
     
    } catch (e) {
      log(e.toString());
      return const Left(AppFailure.unexpected());
    }
  }
}
