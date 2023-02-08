part of 'payment_cubit_cubit.dart';

@freezed
class PaymentCubitState with _$PaymentCubitState {

  const factory PaymentCubitState.initial() = _Initial;
   const factory PaymentCubitState.success() = _Success;
    const factory PaymentCubitState.failed({
    required  PaymentFailure paymentFailure
    }) = _Failed;
}
