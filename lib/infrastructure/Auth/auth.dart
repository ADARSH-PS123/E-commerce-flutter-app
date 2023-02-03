import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_streaming.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/Iauth/address.dart';
import 'package:ecommerce/domain/Iauth/user.dart';
import 'package:ecommerce/domain/core/Failures/appFailure.dart';
import 'package:ecommerce/domain/core/Failures/authfailures.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:ecommerce/infrastructure/app/userdto.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:ecommerce/infrastructure/core/firebaseHelpers.dart';
import 'package:ecommerce/infrastructure/app/userdto.dart';

@LazySingleton(as: Iauth)
@injectable
class Auth implements Iauth {
  final FirebaseAuth _firebaseAuth;

  Auth(
    this._firebaseAuth,
  );
  @override
  Future<Either<Failure, Unit>> loginWithEmailAndPass(
      {required EmailAddress email, required Password password}) async {
    try {
      final emailStr = email.value.getOrElse(() => 'invalid Email');
      final passwordStr = password.value.getOrElse(() => 'invalid password');

      final result = await _firebaseAuth.signInWithEmailAndPassword(
          email: emailStr, password: passwordStr);

      return const Right(unit);
    } on FirebaseAuthException catch (e) {

      if (e.code == 'invalid-email') {
        return const Left(Failure.AuthFailureInvalidEmail());
      } else if (e.code == 'wrong-password') {

        return const Left(Failure.AuthFailureWrongPassword());
      } else if (e.code == 'user-disabled') {
        return const Left(Failure.AuthFailureUserDisabled());
      } else if (e.code == 'user-not-found') {
        return const Left(Failure.AuthFailureUserNotfound());
      } else if (e.code == 'too-many-requests') {
        return const Left(Failure.AuthFailureTooMantRequests());
      } else if (e.code == 'network-request-failed') {
        return const Left(Failure.noConnection());
      } else {
        return const Left(Failure.serverFailure());
      }
    }
  
  }

  @override
  Future<Either<Failure, Unit>> regWithEmailAndPass(
      {required EmailAddress email, required Password password}) async {
    try {
      final emailStr = email.value.getOrElse(() => 'invalid Email');
      final passwordStr = password.value.getOrElse(() => 'invalid password');
      await _firebaseAuth
          .createUserWithEmailAndPassword(
              email: emailStr, password: passwordStr)
          .then((result)async{
        final Map<String,dynamic> json = {
          'id':result.user!.uid,
          'userName':   result.user!.email.toString().replaceAll('@gmail.com', ''),
           'emailAddress': result.user!.email.toString(),
             'profilePhoto': '', 'addresses': [],'fullAddress':''


        };
            final userDto = AppUserDto(
              id: result.user!.uid,
              userName:
                  result.user!.email.toString().replaceAll('@gmail.com', ''),
              emailAddress: result.user!.email.toString(),
          
              profilePhoto: '', addresses: [], fullAddress:FullUserAddressDto.fromDomain(FullUserAddress.empty()) ,  );


          await    _firebaseAuth.setUserinfoAfterRegisterX(userDto);});
        //after registration the user state is authenticated by default we need to signout 
await _firebaseAuth.signOut();
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
  
      if (e.code == 'invalid-email') {
        return const Left(Failure.AuthFailureInvalidEmail());
      } else if (e.code == 'wrong-password') {
        return const Left(Failure.AuthFailureWrongPassword());
      } else if (e.code == 'email-already-in-use') {
        return const Left(Failure.AuthFailureEmailAlreadyInUse());
      } else if (e.code == 'user-disabled') {
        return const Left(Failure.AuthFailureUserDisabled());
      } else if (e.code == 'user-not-found') {
        return const Left(Failure.AuthFailureUserNotfound());
      } else if (e.code == 'too-many-requests') {
        return const Left(Failure.AuthFailureTooMantRequests());
      } else {
        return const Left(Failure.serverFailure());
      }
    }
  }

  @override
  Future<Option<AppUser>> getSignedUser() async {
    final User? user = _firebaseAuth.currentUser;

    if (user == null) {
 
      return none();
    } else {

      try {
        final userSnap = await _firebaseAuth
            .getUserCollectionX(UniqueId.fromBackend(user.uid));
        final userDto = userSnap.fold(
            (l) => throw const AppFailure.unexpected(),
            (r){
             
              return
               AppUserDto.fromJson(r.data() as Map<String, dynamic>);});
             
        return Some(userDto.toDomain());
      } catch (E) {
        return none();
      }
    }
    /*  return Some(AppUser(
        id: UniqueId.fromBackend(user.uid),
        emailAddress: EmailAddress(user.email.toString()),
        profilePhoto: ProfilePhoto(''),
        userAddress: UserAddress(''),
        userName:
            UserName(user.email.toString().replaceAll('@gmail.com', '')))); */
  }

  @override
  Future<Either<Failure, Unit>> sendPasswordResetMail(
      {required EmailAddress email}) async {
    try {
      final emailStr = email.value.getOrElse(() => '');
      await _firebaseAuth.sendPasswordResetEmail(email: emailStr);
      return const Right(unit);
    } on PlatformException catch (e) {
     
      if (e.code == 'ERROR_INVALID_EMAIL') {
        return const Left(Failure.AuthFailureInvalidEmail());
      } else if (e.code == 'ERROR_USER_DISABLED') {
        return const Left(Failure.AuthFailureUserDisabled());
      } else if (e.code == 'ERROR_USER_NOT_FOUND') {
        return const Left(Failure.AuthFailureUserNotfound());
      } else if (e.code == 'ERROR_TOO_MANY_REQUESTS') {
        return const Left(Failure.AuthFailureTooMantRequests());
      } else {
        return const Left(Failure.serverFailure());
      }
    }
  }

  @override
  Future<void> SignOut() async {
    await _firebaseAuth.signOut();
  }
}
