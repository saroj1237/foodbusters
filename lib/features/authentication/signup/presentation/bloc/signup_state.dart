part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = Initial;
  const factory SignupState.getOtpLoading() = GetOtpLoading;
  const factory SignupState.getOtpSuccess() = GetOtpSuccess;
  const factory SignupState.alreadyExistButOtpNotVerified() =
      AlreadyExistButOtpNotVerified;
  const factory SignupState.getOtpFailure(String error) = GetOtpFailure;

  const factory SignupState.verifyOtpLoading() = VerifyOtpLoading;
  const factory SignupState.verifyOtpSuccess() = VerifyOtpSuccess;
  const factory SignupState.verifyOtpFailure(String error) = VerifyOtpFailure;
}

// abstract class SignupState {}

// class Initial extends SignupState {}

// class SignupLoading extends SignupState {}

// class GetOtpSuccess extends SignupState {}

// class GetOtpFailure extends SignupState {}
