import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_entities.freezed.dart';

@freezed
class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    String? phoneNumber,
    String? fullName,
    String? password,
    String? otpCode,
  }) = _SignUpRequest;
}
