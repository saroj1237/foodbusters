part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.getSignupOtp(SignUpRequest sighnupRequest) =
      GetSignupOtp;
  const factory SignupEvent.verifySignupOtp(SignUpRequest sighnupRequest) =
      VerifySignupOtp;
}

// abstract class SignupEvent {}

// class GetSignupOtp extends SignupEvent {
//   final SignUpRequest signupRequest;
//   GetSignupOtp({required this.signupRequest});
// }
