import 'dart:ffi';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/application/authBloc/auth_bloc.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/core/Failures/authfailures.dart';
import 'package:ecommerce/domain/core/Failures/valueFailure.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class AuthMock extends Mock implements Iauth {}

void main() {
  late AuthMock authMock;
  setUp(() {
    authMock = AuthMock();
  });
  group('auth bloc', () {
    final regStateLoading = AuthState(
        isSubmitting: true,
        emailAddress: EmailAddress(''),
        confirmPassword: Password(''),
        isMatched: false,
        password: Password(''),
        isError: false,
        optionSuccessOrFailure: none(),
        isAuthenticated: false);
    final regStateLoaded = regStateLoading.copyWith(
        isSubmitting: false, optionSuccessOrFailure: Some(Right(unit)));
        final userRegistrationFailed = regStateLoading.copyWith(
            isAuthenticated: false,
            isError: true,
            optionSuccessOrFailure: Some(Left(Failure.clinetFailure())),
            isSubmitting: false);
    final logInSuccess = regStateLoading.copyWith(
            isSubmitting: false,
            isAuthenticated: true,
            isError: false,
            optionSuccessOrFailure:const Some(Right(unit)));
    blocTest('signInwithEmail', 
    build: (){
      when(() =>
        authMock.loginWithEmailAndPass(email: EmailAddress(''), password: Password(''))
      ).thenAnswer((_)async =>const Right(unit) );
      return AuthBloc(authMock);
    },
    act:(AuthBloc bloc) {
      return bloc.add(AuthEvent.signinWithEmailansPassword());
    },
    expect: () => [
      regStateLoading,logInSuccess
    ],
    );
    blocTest('user registration success',
        build: () {
          when(() => authMock.regWithEmailAndPass(
                  email: EmailAddress(''), password: Password('')))
              .thenAnswer((_) async => const Left(Failure.clinetFailure()))/* or Some(Right(unit)) =>success*/;
          return AuthBloc(authMock);
        },
        act: (AuthBloc bloc) {
          return bloc.add(AuthEvent.regWithEmailAndPass());
        },
        expect: () => [regStateLoading, userRegistrationFailed]);
  });
}
