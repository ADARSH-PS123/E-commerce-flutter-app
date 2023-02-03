import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/Iauth/user.dart';
import 'package:ecommerce/domain/core/Failures/valueFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:firebase_auth/firebase_auth.dart';

Either<ValueFailure<String>, String> validateEmail(String email) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(email)) {
    return Right(email);
  } else {
    return Left(ValueFailure.invalidEmail(failedValue: email));
  }
}

Either<ValueFailure<String>, String> validatePassword(String password) {
  if (password.length >= 6) {
    return Right(password);
  } else {
    return Left(ValueFailure.shortPassword(failedValue: password));
  }
}

/*   Option<AppUser> validateUser(UserCredential user){
    if(user.user != null){
return Some(AppUser(id: UniqueId.fromBackend(user.user!.uid), emailAddress: EmailAddress(user.user!.email.toString()), profilePhoto: ProfilePhoto(''), userAddress: UserAddress('')));
    }
    return none();
  } */
Either<ValueFailure<String>, String> validateIsEmpty({required String id}) {
  if (id.isEmpty) {
    return const Left(ValueFailure.nullField(isNull: true));
  } else {
    return Right(id);
  }
}

Either<ValueFailure<String>, String> validateMultiline(
    {required String value}) {
  if (value.contains('\n')) {
    return Right(value);
  } else {
    return Left(ValueFailure.notMultiline(failedValue: value));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(
    {required String value}) {
  if (value.contains('\n')) {
    return Left(ValueFailure.notSingleLine(failedValue: value));
  } else {
    return Right(value);
  }
}

Either<ValueFailure<String>, String> validatePincode({required String value}) {
  try {
    
    int code = int.parse(value);

    return Right(code.toString());
  } catch (e) {
    return Left(ValueFailure.invalidPincode(failedValue: value));
  }
}


Either<ValueFailure<String>, String> validateDouble({required String value}) {
  try {
    
    double code = double.parse(value);

    return Right(code.toString());
  } catch (e) {
    return Left(ValueFailure.invalidPincode(failedValue: value));
  }
}
