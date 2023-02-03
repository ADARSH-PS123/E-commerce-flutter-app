import 'package:ecommerce/domain/core/valueobject/valueobject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'address.freezed.dart';
@freezed
class FullUserAddress with _$FullUserAddress{
  const factory FullUserAddress(
    {
      required UserAddress userAddress,required PinCode pincode,
      required UniqueId uniqueId
    }
  ) = _FullUserAddress;
   factory FullUserAddress.empty(){
    return FullUserAddress(userAddress: UserAddress(''), pincode: PinCode(''), uniqueId: UniqueId.fromBackend(''));
  }
}