import 'package:bloc/bloc.dart';
import 'package:ecommerce/domain/core/Failures/paymentFailure.dart';
import 'package:ecommerce/domain/iPaymentRepo/iPaymentRepo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_cubit_state.dart';
part 'payment_cubit_cubit.freezed.dart';

@injectable
class PaymentCubitCubit extends Cubit<PaymentCubitState> {
  final IPaymentRepo _paymentRepo;
  PaymentCubitCubit(this._paymentRepo)
      : super(const PaymentCubitState.initial());
   startPayment() async {
  
    final result = await _paymentRepo.initPaymentSheet();
    final out = result.fold((l) => PaymentCubitState.failed(paymentFailure: l),
        (r) => const PaymentCubitState.success());
    emit(out);
  }
}
