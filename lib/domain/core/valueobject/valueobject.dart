



import 'package:dartz/dartz.dart';

import 'package:ecommerce/domain/core/Failures/valueFailure.dart';
import 'package:ecommerce/domain/core/errors/errors.dart';
import 'package:ecommerce/domain/core/validators/validate.dart';
import 'package:uuid/uuid.dart';

abstract class ValueObject<T> {
  
  Either<ValueFailure,T> get value;
 
  T getOrElse(T dflt) {
    return value.getOrElse(() {
      return dflt;
      } );
  }
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }
  bool hasData(){
  return  value.fold((l) => false, (r) => true);
  }
  const ValueObject();
  
  @override
  String toString() => 'ValueObject(value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ValueObject &&
      other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
/* class EmailAddress extends ValueObject<String>{
 @override
  final Either<ValueFailure<String>, String>  value ;
 
  
   factory EmailAddress(String input){
return EmailAddress._(validateEmail(input));
  }
  const EmailAddress._(this.value);

 
  
} */
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmail(input),
    );
  }

  const EmailAddress._(this.value);
}


class Password extends ValueObject{
  
  final Either<ValueFailure<String>, String>  value ;
 
  
   factory Password(String input){
return Password._(validatePassword(input));
  }
  const Password._(this.value);
  

}
class UniqueId extends ValueObject<String>{
    final Either<ValueFailure<String>, String>  value ;

    factory UniqueId.fromBackend(String id){
   
      return UniqueId._(validateIsEmpty(id: id));
    }
    factory UniqueId(){
     return UniqueId._(Right(const Uuid().v1()));
    }
    const UniqueId._(this.value);
}

class UserAddress extends ValueObject<String>{

  final Either<ValueFailure<String>,String> value;
  factory UserAddress(String address){
    return UserAddress._(
validateIsEmpty(id: address)
    );
  }
   const UserAddress._(this.value);
}

class UserName extends ValueObject<String>{

  final Either<ValueFailure<String>,String> value;
  factory UserName(String name){
    return UserName._(
validateIsEmpty(id: name).flatMap((a) => validateSingleLine(value: name))
    );
  }
   const UserName._(this.value);
}
 class PinCode extends ValueObject<String>{
  final Either<ValueFailure<String>,String> value;
  factory PinCode(String pincode){
    return PinCode._(
      validateIsEmpty(id: pincode).flatMap((a) => 
      validatePincode(value: pincode).flatMap((pincode) =>validateSingleLine(value: pincode))));
  }
  PinCode._(this.value);
} 



class ProfilePhoto extends ValueObject<String>{

  final Either<ValueFailure<String>,String> value;
  factory ProfilePhoto(String name){
    return ProfilePhoto._(
validateIsEmpty(id: name)
    );
  }
   const ProfilePhoto._(this.value);
}


class ProductValueObject extends ValueObject<String>{
   final Either<ValueFailure<String>,String> value;

     factory ProductValueObject(String name){
    return ProductValueObject._(
validateIsEmpty(id: name)
    );
  }
  const ProductValueObject._(this.value);
}






class CountValueObject extends ValueObject<int>{
  @override
  final Either<ValueFailure<int>,int> value;
    factory CountValueObject(int count){
    return CountValueObject._(
Right(count)
    );
  }
  const CountValueObject._(this.value);

}

class FloatValueObject extends ValueObject<double>{
  @override
  final Either<ValueFailure<double>,double> value;
    factory FloatValueObject(double count){
    return FloatValueObject._(
Right(count)
    );
  }
  const FloatValueObject._(this.value);

}






