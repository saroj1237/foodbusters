import 'package:foodbusters/core/app/device_info.dart';
import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';

abstract class LoginRemoteDataSource {
  Future<String> initLogin(
      String phoneNumber, String password, DeviceInfo deviceInfo);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final DioClient _dioClient;
  LoginRemoteDataSourceImpl(DioClient dioClient) : _dioClient = dioClient;

  @override
  Future<String> initLogin(
      String phoneNumber, String password, DeviceInfo deviceInfo) async {
    try {
      final response = await _dioClient.post(
        ApiUrl.initLogin,
        data: {
          'phone': phoneNumber,
          'password': password,
          'deviceType': deviceInfo.deviceType,
          'deviceToken': deviceInfo.fcmToken,
          "appVersion": deviceInfo.appVersion,
        },
      );
      final authToken = response['data']['authToken'];
      return authToken;
    } catch (e) {
      rethrow;
    }
  }
}
