
import 'dart:convert';
import 'dart:developer';
import 'package:ecommerce/domain/core/Failures/paymentFailure.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce/core/constants.dart';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/iPaymentRepo/iPaymentRepo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: IPaymentRepo)
class PaymentRepo implements IPaymentRepo{
  @override
  Future<Either<PaymentFailure, Unit>> initPaymentSheet()async {
     try {
      // 1. create payment intent on the server
      final data =   await createPaymentIntent('100', 'INR');

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
  
     return Left(PaymentFailure(errorMessage: e.toString()));
    }
  }
  createPaymentIntent(String amount, String currency) async {
    try {
      //Request body
      Map<String, dynamic> body = {
        'amount': amount,
        'currency': currency,
        'payment_method_types[]':'card',
       "description":"Software development services",
      
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

 
}