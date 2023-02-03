part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
 const  factory AuthState({
required bool isSubmitting,required EmailAddress emailAddress ,required Password confirmPassword,required bool isMatched,
required Password password,required bool isError,
required Option<Either<Failure,Unit>> optionSuccessOrFailure,required bool isAuthenticated
  }) = _AuthState;
 factory AuthState.initial(){
    return AuthState(isSubmitting: false,isAuthenticated: false,
     emailAddress: EmailAddress(''), password: Password(''),
      isError: false,optionSuccessOrFailure: none(), confirmPassword: Password(''), isMatched: false);
  }
}
