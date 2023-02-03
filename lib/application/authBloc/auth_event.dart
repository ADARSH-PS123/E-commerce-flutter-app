part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory AuthEvent.passwordChanged(String passwordStr) = _PasswordChanged;
    const factory AuthEvent.confirmpasswordChanged(String passwordStr) = _ConfirmPasswordChanged;
  const factory AuthEvent.regWithEmailAndPass() = _RegWithEmailAndPassword;
  const factory AuthEvent.signinWithEmailansPassword() = _SignInWithEmailAndPassword;
    const factory AuthEvent.ispasswordMatched() = _IsPasswordMatched;
    const factory AuthEvent.sendPasswordResetMail() = _PasswordResetMail;

}