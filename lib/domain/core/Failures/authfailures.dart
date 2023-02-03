import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authfailures.freezed.dart';

@freezed
class Failure with _$Failure {
  //log in falure

  const factory Failure.AuthFailureUserDisabled() = _UserDisabledFailure;
  const factory Failure.AuthFailureUserNotfound() = _UserNotFoundFailure;
  const factory Failure.AuthFailureWrongPassword() = _WrongPasswordFailure;
  const factory Failure.AuthFailureTooMantRequests() = _TooManyRequestFailure;
  //common failures
  const factory Failure.AuthFailureInvalidEmail() = _InvalidEmailFailure;
  const factory Failure.clinetFailure() = _ClientFailure;
  const factory Failure.serverFailure() = _ServerFailure;
  const factory Failure.noConnection() = _NoConnectionFailure;
  //register failures

  const factory Failure.AuthFailureEmailAlreadyInUse() =
      _EmailAlreadyInUseFailure;
  const factory Failure.AuthFailureWeakPassword() = _WeakPasswordFailureFailure;
  const factory Failure.AuthFailureAnonimousAccountDisabled() =
      _AnonimousAccountDisabledFailure;

  //firebase storage
  const factory Failure.FirebaseFirestore() = _FirebaseFirestoreFailure;
}