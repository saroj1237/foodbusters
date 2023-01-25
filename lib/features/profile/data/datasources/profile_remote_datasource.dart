import 'package:dio/dio.dart';
import 'package:foodbusters/core/network_services/api_url.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/features/profile/domain/entities/profile_entities.dart';

abstract class ProfileRemoteDataSource {
  Future<UserModel> getLoggedInUserInfo();
  Future<UserModel> updateProfile(UpdateProfileReq req);
  Future<bool> changePassword(ChangePasswordReq req);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final DioClient _dioClient;
  ProfileRemoteDataSourceImpl(DioClient dioClient) : _dioClient = dioClient;

  @override
  Future<UserModel> getLoggedInUserInfo() async {
    try {
      final response =
          await _dioClient.get(ApiUrl.getUserProfile, options: Options());

      final json = response;

      UserModel userModel = UserModel.fromJson(json['data']);
      return userModel;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> updateProfile(UpdateProfileReq req) async {
    try {
      final Map<String, dynamic> data = {};
      data['fullName'] = req.fullName;
      data['email'] = req.email;
      if (req.image != null) {
        data['image'] = await MultipartFile.fromFile(req.image!.path);
      }
      // final authToken = await _appPreferences.isUserLoggedIn();
      final response = await _dioClient.multipartReq(ApiUrl.updateProfile,
          formData: FormData.fromMap(data),
          options: Options(headers: {
            'content-type': 'multipart/form-data',
            // 'authToken': authToken
          }));
      final json = response['data'];
      return UserModel.fromJson(json);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> changePassword(ChangePasswordReq req) async {
    try {
      await _dioClient.multipartReq(
        ApiUrl.updateProfile,
        formData: FormData.fromMap({
          "oldPassword": req.oldPassword,
          "newPassword": req.newPassword,
        }),
        options: Options(
          headers: {
            'content-type': 'multipart/form-data',
            // 'authToken': authToken
          },
        ),
      );
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
