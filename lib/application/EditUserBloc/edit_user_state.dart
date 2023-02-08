part of 'edit_user_bloc.dart';

@freezed
class EditUserState with _$EditUserState {
  const factory EditUserState(
      {required AppUser user,
      required PinCode pincode,
      required UserAddress userAddress,
      required UserName userName,
      required Option<Either<AppFailure, Unit>> optionSuccessFailure,
      required bool isLoading,
      required bool isError}) = _EditUserState;


      
  factory EditUserState.initial() {
    return EditUserState(
        user: AppUser.empty(),
        pincode: PinCode(''),
        userAddress: UserAddress(''),
        userName: UserName(''),
        optionSuccessFailure: none(),
        isLoading: false,
        isError: false);
  }
}
