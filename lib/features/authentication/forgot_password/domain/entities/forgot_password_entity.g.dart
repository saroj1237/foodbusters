// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForgotPasswordRequest _$$_ForgotPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ForgotPasswordRequest(
      mobileNumber: json['phone'] as String?,
      otpCode: json['otp'] as int?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_ForgotPasswordRequestToJson(
        _$_ForgotPasswordRequest instance) =>
    <String, dynamic>{
      'phone': instance.mobileNumber,
      'otp': instance.otpCode,
      'password': instance.password,
    };
