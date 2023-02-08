import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/Iauth/Iauth.dart';
import 'package:ecommerce/domain/core/Failures/authfailures.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Iauth _auth;
  AuthBloc(this._auth) : super(AuthState.initial()) {
    on<_PasswordResetMail>((event, emit) async {
      final result =
          await _auth.sendPasswordResetMail(email: state.emailAddress);
      final out = result.fold((l) {
        return state.copyWith(
            isAuthenticated: false,
            isError: true,
            optionSuccessOrFailure: Some(Left(l)),
            isSubmitting: false);
      }, (r) {
        return state.copyWith(
            isAuthenticated: false,
            isSubmitting: false,
            isError: false,
            optionSuccessOrFailure: none());
      });
      emit(out);
    });

    on<_EmailChanged>((event, emit) {
      emit(state.copyWith(
          emailAddress: EmailAddress(event.emailStr),
          optionSuccessOrFailure: none()));
    });

    on<_PasswordChanged>((event, emit) {
      emit(state.copyWith(
          password: Password(event.passwordStr),
          optionSuccessOrFailure: none()));
    });
    on<_ConfirmPasswordChanged>((event, emit) {
      emit(state.copyWith(
          confirmPassword: Password(event.passwordStr),
          optionSuccessOrFailure: none()));
    });

    on<_RegWithEmailAndPassword>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      final result = await _auth.regWithEmailAndPass(
          email: state.emailAddress, password: state.password);
      final output = result.fold((f) {
        return state.copyWith(
            isAuthenticated: false,
            isError: true,
            optionSuccessOrFailure: Some(Left(f)),
            isSubmitting: false);
      }, (r) {
        return state.copyWith(
            isAuthenticated: false,
            isSubmitting: false,
            isError: false,
            optionSuccessOrFailure: const Some(Right(unit)));
      });
      emit(output);
    });

    on<_SignInWithEmailAndPassword>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      final result = await _auth.loginWithEmailAndPass(
          email: state.emailAddress, password: state.password);
      final output = result.fold((f) {
        return state.copyWith(
            isError: true,
            isAuthenticated: false,
            optionSuccessOrFailure: Some(Left(f)),
            isSubmitting: false);
      }, (r) {
        return state.copyWith(
            isSubmitting: false,
            isAuthenticated: true,
            isError: false,
            optionSuccessOrFailure:const Some(Right(unit)));
      });
      emit(output);
    });

    on<_IsPasswordMatched>((event, emit) {
      if (state.confirmPassword == state.password) {
        emit(state.copyWith(isMatched: true));
      } else {
        emit(state.copyWith(isMatched: false));
      }
    });
    
  }
  @override
  Future<void> close() {
  print("onclose callsed");
    return super.close();
  }
  
}
