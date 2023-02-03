import 'package:ecommerce/domain/Iauth/address.dart';
import 'package:ecommerce/domain/Iauth/user.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'userdto.freezed.dart';
part 'userdto.g.dart';

@freezed
class AppUserDto with _$AppUserDto {
    @JsonSerializable(explicitToJson: true)
  const factory AppUserDto(
      {required String id,
      required String userName,
      required String emailAddress,
      
      required String profilePhoto,
      required FullUserAddressDto fullAddress,
  
      required List<FullUserAddressDto> addresses}) = _AppUserDto;


  factory AppUserDto.fromDomain(AppUser user) {
    return AppUserDto(
      id: user.id.getOrCrash(),
      emailAddress: user.emailAddress.getOrCrash(),
      profilePhoto: user.profilePhoto.getOrElse(''),
  
      userName: user.userName.getOrCrash(),
    fullAddress: FullUserAddressDto.fromDomain(user.fullAddress),
    addresses: user.addresses.map((fullAddress) {
return FullUserAddressDto.fromDomain(fullAddress);
    }).toList()
     
    );
  }
  factory AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserDtoFromJson(json); 
}

extension AppUserDtoX on AppUserDto {
  AppUser toDomain() {
    return AppUser(
        id: UniqueId.fromBackend(id),
        userName: UserName(userName),
        emailAddress: EmailAddress(emailAddress),
       fullAddress: fullAddress.toDomain(),
        profilePhoto: ProfilePhoto(profilePhoto),
        addresses: addresses.map((userDto) {
          return userDto.toDomain();
        }).toList(),
        );
  }
}

@freezed
class FullUserAddressDto with _$FullUserAddressDto{
  const factory FullUserAddressDto(
    { required String userAddress,
    required String uniqueId,
    required String pincode}
  ) = _FullUserAddressDto;
  factory FullUserAddressDto.fromDomain(FullUserAddress userAddress){

    return  FullUserAddressDto(userAddress: userAddress.userAddress.getOrElse(""),pincode: userAddress.pincode.getOrElse(""), uniqueId: userAddress.uniqueId.getOrElse(""));
  }
    factory FullUserAddressDto.fromJson(Map<String, dynamic> json) =>
    _$$_FullUserAddressDtoFromJson(json); 
}
extension FullUserAddressX on FullUserAddressDto{
  FullUserAddress toDomain(){
    return FullUserAddress(userAddress: UserAddress(userAddress), pincode: PinCode(pincode), uniqueId: UniqueId.fromBackend(uniqueId));
  }
}