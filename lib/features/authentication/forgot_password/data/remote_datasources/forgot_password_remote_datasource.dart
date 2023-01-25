import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/entities/forgot_password_entity.dart';

abstract class ForgotPasswordRemoteDatasource {
  Future<bool> getForgotPasswordOtp(String mobileNumber);
  Future<bool> resetPassword(ForgotPasswordRequest request);
}

class ForgotPasswordRemoteDatasourceImpl
    implements ForgotPasswordRemoteDatasource {
  final DioClient _dioClient;
  ForgotPasswordRemoteDatasourceImpl(DioClient dioClient)
      : _dioClient = dioClient;
  @override
  Future<bool> getForgotPasswordOtp(String mobileNumber) async {
    try {
      await _dioClient.post(
        ApiUrl.forgotPasswordOtp,
        data: {
          'phone': mobileNumber,
        },
      );
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> resetPassword(ForgotPasswordRequest request) async {
    try {
      await _dioClient.post(
        ApiUrl.forgotPasswordReset,
        data: request.toJson(),
      );
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
