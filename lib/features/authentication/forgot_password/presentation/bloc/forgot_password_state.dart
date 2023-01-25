part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = Initial;
  const factory ForgotPasswordState.loading() = Loading;
  const factory ForgotPasswordState.getForgotPasswordOtpSuccess() =
      GetForgotPasswordOtpSuccess;
  const factory ForgotPasswordState.getForgotPasswordOtpFailure(String error) =
      GetForgotPasswordOtpFailure;
  const factory ForgotPasswordState.resetPasswordSuccess() =
      ResetPasswordSuccess;
  const factory ForgotPasswordState.resetPasswordFailure(String error) =
      ResetPasswordFailure;
}
