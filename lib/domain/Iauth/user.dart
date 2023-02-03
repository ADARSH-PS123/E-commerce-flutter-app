import 'package:ecommerce/domain/Iauth/address.dart';
import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
@freezed
class AppUser with _$AppUser{
  const factory AppUser({
   required UniqueId id,
   required UserName userName,
   required EmailAddress emailAddress,
   required FullUserAddress fullAddress,

   required ProfilePhoto profilePhoto,
   required List<FullUserAddress> addresses //[id:[aaddd,pin],id1:[aaaa,90-202002]]
  }) = _AppUser;
   factory AppUser.empty(){
    return AppUser(emailAddress: EmailAddress(''), id: UniqueId.fromBackend(''), profilePhoto: ProfilePhoto(''), fullAddress:FullUserAddress.empty() , userName: UserName(''), addresses: [], );
  }
}

