part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = Initial;
  const factory PaymentState.paymentLoading() = PaymentLoading;
  const factory PaymentState.paymentFailure(String error) = PaymentFailure;
  const factory PaymentState.paymentSuccess(bool value) = PaymentSuccess;
}
