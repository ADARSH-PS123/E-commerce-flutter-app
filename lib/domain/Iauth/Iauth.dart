


import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/Iauth/user.dart';
import 'package:ecommerce/domain/core/Failures/authfailures.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';

abstract class Iauth{
  Future<Either<Failure,Unit>>regWithEmailAndPass({
    required EmailAddress email,required Password password
  });
   Future<Either<Failure,Unit>>loginWithEmailAndPass({
    required EmailAddress email,required Password password
  });
  Future<Option<AppUser>> getSignedUser(

  );
  Future<void> SignOut();
  
  Future<Either<Failure,Unit>> sendPasswordResetMail({required EmailAddress email});
}