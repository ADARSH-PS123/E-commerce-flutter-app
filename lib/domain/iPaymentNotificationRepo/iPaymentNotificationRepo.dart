import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/Failures/paymentFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';

abstract class IPaymentRepo {
      Future <Either<PaymentFailure,Unit>>initPaymentSheet(String amountInPaisa);
      Future <Either<AppFailure,Unit>> sendMessage();
     Future<bool?>getNotificationPermission();
       void notificationPluginInitialiization();
         Future<void> sendNotification( {int? id, required String title, required String body});
}