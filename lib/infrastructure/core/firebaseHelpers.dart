import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/di/configInjection.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/domain/iapp/iapp.dart';

import 'package:ecommerce/infrastructure/app/userdto.dart';
import 'package:firebase_auth/firebase_auth.dart';


extension FirebaseStorageHelperX on FirebaseAuth{
Future<void> setUserinfoAfterRegisterX(AppUserDto appUserDto)async{
await  getIt<IAppRepo>().setUserinfoAfterRegister(appUserDto: appUserDto);

}
Future<Either<AppFailure,DocumentSnapshot<Map<String, dynamic>>>> getUserCollectionX(UniqueId uid)async{
final result = await getIt<IAppRepo>().getUserCollection(uid: uid);
return result;
  
  

  
}
}