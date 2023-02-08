import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/Failures/paymentFailure.dart';

abstract class IPaymentRepo {
      Future <Either<PaymentFailure,Unit>>initPaymentSheet();
}