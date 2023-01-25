part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.paywithCOD(PaymentReq req) = PaywithCOD;
  const factory PaymentEvent.paywithEsewa(PaymentReq req) = PaywithEsewa;
}
