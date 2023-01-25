part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.getForgotPasswordOtp(String mobileNumber) =
      GetForgotPasswordOtp;
  const factory ForgotPasswordEvent.resetPassword(
      ForgotPasswordRequest requestModel) = ResetPassword;
}
