// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_entity.freezed.dart';
part 'forgot_password_entity.g.dart';

@freezed
class ForgotPasswordRequest with _$ForgotPasswordRequest {
  const factory ForgotPasswordRequest({
    @JsonKey(name: 'phone') String? mobileNumber,
    @JsonKey(name: 'otp') int? otpCode,
    @JsonKey(name: 'password') String? password,
  }) = _ForgotPasswordRequest;

  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordRequestFromJson(json);
}
