part of 'khalti_bloc.dart';

@freezed
class KhaltiState with _$KhaltiState {
  const factory KhaltiState.initial() = Initial;
  const factory KhaltiState.khaltiPayLoading() = KhaltiPayLoading;
  const factory KhaltiState.initiatePaymentFailure(String error) =
      InitiatePayFailure;
  const factory KhaltiState.initiatePaymentSuccess({
    required PaymentInitiationResponseModel paymentInitiationResponseModel,
    required String mpin,
  }) = InitiatePaySuccess;
  const factory KhaltiState.confirmPaymentFailure(String error) =
      ConfirmPayFailure;
  const factory KhaltiState.confirmPaymentSuccess({
    required PaymentSuccessModel paymentSuccessModel,
  }) = ConfirmPaySuccess;
}
