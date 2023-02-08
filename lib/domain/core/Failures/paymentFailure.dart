import 'package:freezed_annotation/freezed_annotation.dart';
part 'paymentFailure.freezed.dart';
@freezed
abstract class PaymentFailure<T> with _$PaymentFailure<T>{
  const factory PaymentFailure({
    required String errorMessage
  }) = _PaymentFailure<T>;
}