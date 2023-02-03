
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'valueFailure.freezed.dart';
@freezed
abstract class  ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail(
    {required String failedValue}
  ) = InvalidEmail<T>;
   const factory ValueFailure.shortPassword(
    {required String failedValue}
  ) = ShortPassword<T>;
  const factory ValueFailure.nullField({required bool isNull})=_InvalidId<T>;
  const factory ValueFailure.notMultiline({required String failedValue}) =notMultiline<T>;
   const factory ValueFailure.notSingleLine({required String failedValue}) =notSingleLine<T>;
   const factory ValueFailure.invalidPincode({required String failedValue}) = Invalidpincode<T>;
  
}