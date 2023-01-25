import 'package:flutter/material.dart';
import 'package:foodbusters/core/app/device_info.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/core/resources/resources.dart';

abstract class SignUpRemoteDataSource {
  Future<bool> getSignUpOtp(String phoneNumber, String password,
      String fullName, DeviceInfo deviceInfo);
  Future<String> verifySignUpOtp(String phoneNumber, String otpCode);
}

class SignUpRemoteDataSourceImpl implements SignUpRemoteDataSource {
  final DioClient _dioClient;
  SignUpRemoteDataSourceImpl(DioClient dioClient) : _dioClient = dioClient;
  @override
  Future<bool> getSignUpOtp(String phoneNumber, String password,
      String fullName, DeviceInfo deviceInfo) async {
    try {
      await _dioClient.post(
        ApiUrl.getOtpForRegister,
        data: {
          'phone': phoneNumber,
          'password': password,
          'fullName': fullName,
          'deviceType': deviceInfo.deviceType,
          'deviceToken': deviceInfo.fcmToken,
          'appVersion': deviceInfo.appVersion
        },
      );
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> verifySignUpOtp(String phoneNumber, String otpCode) async {
    try {
      final response = await _dioClient.post(
        ApiUrl.verifyRegisterOtp,
        data: {
          'phone': phoneNumber,
          'otp': int.parse(otpCode),
        },
      );
      final token = response['data']['authToken'] as String;
      debugPrint(token);
      return token;
    } catch (e) {
      rethrow;
    }
  }
}
