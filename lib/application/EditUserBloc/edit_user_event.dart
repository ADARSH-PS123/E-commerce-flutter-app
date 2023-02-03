part of 'edit_user_bloc.dart';

@freezed
class EditUserEvent with _$EditUserEvent{
const factory EditUserEvent.userNameChanged(String userName) = _EditUserEventUserNameChanged;
const factory EditUserEvent.userAddressChanged(String userAddress) = _EditUserEventUserAddressChanged;
const factory EditUserEvent.userPincodeChanged(String pincode) = _EditUserEventUserPincodeChanged;
const factory EditUserEvent.getSignedUser() = _EditUserEventGetSignedUser;
const factory EditUserEvent.editUserInfo() = _EditUserEventEditUserInfo;
const factory EditUserEvent.editProfilePhoto() = _EditUserEventEditProfilePhoto;
const factory EditUserEvent.removeProfilePhoto() = _EditUserEventRemoveProfilePhoto;
    
}