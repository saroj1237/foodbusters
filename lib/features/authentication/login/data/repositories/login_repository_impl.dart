import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/app/app_prefes.dart';
import 'package:foodbusters/core/app/device_info.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/authentication/login/domain/entities/login_entity.dart';
import 'package:foodbusters/features/authentication/login/domain/repositories/login_repository.dart';

import '../datasources/login_remote_datasource.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;
  final AppPreferences appPreferences;
  LoginRepositoryImpl(
      {required this.remoteDataSource, required this.appPreferences});
  @override
  Future<Either<Failure, String>> initLogin(LoginRequest loginRequest) async {
    try {
      final deviceInfo = await getDeviceInfo();
      final authToken = await remoteDataSource.initLogin(
          loginRequest.phoneNumber, loginRequest.password, deviceInfo);
      // store auth token locally
      await appPreferences.setUserLoggedIn(authToken);
      // subscribe to the fcm token for notification purpose

      return Right(authToken);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
