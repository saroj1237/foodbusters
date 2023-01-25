part of 'khalti_bloc.dart';

@freezed
class KhaltiEvent with _$KhaltiEvent {
  const factory KhaltiEvent.started() = Started;
  const factory KhaltiEvent.initiatePayment(
    PaymentInitiationRequestModel initiationRequestModel,
  ) = InitiatePayment;
  const factory KhaltiEvent.confirmPayment(
    KhaltiOtpPageModel khaltiOtpPageModel,
    String otp,
  ) = ConfirmPayment;
}
