import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/domain/iPaymentNotificationRepo/iPaymentNotificationRepo.dart';
import 'package:ecommerce/infrastructure/PaymentNotificationRepo/PaymentNotificationRepo.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'configInjection.config.dart';

GetIt getIt = GetIt.instance;
@InjectableInit(preferRelativeImports: false)
Future<void> configInjection({bool isTesting = false}) async {
  await getIt.init(environment: Environment.prod);

  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  getIt.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
  getIt.registerSingleton<InternetConnectionChecker>(
      InternetConnectionChecker());
  getIt.registerSingleton<FirebaseStorage>(FirebaseStorage.instance);
  getIt.registerSingleton<ImagePicker>(ImagePicker());
  getIt.registerSingleton<FirebaseMessaging>(FirebaseMessaging.instance);
  
}
