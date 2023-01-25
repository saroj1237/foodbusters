import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/app/app_prefes.dart';
import 'package:foodbusters/core/app/device_info.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/authentication/signup/data/datasources/signup_remote_data_source.dart';
import 'package:foodbusters/features/authentication/signup/domain/repositories/signup_repository.dart';

import '../../domain/entities/signup_entities.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpRemoteDataSource _dataSource;
  final AppPreferences appPreferences;
  SignUpRepositoryImpl(this._dataSource, this.appPreferences);
  @override
  Future<Either<Failure, bool>> signup(SignUpRequest signUpRequest) async {
    // check the network
    try {
      final deviceInfo = await getDeviceInfo();
      final response = await _dataSource.getSignUpOtp(
        signUpRequest.phoneNumber!,
        signUpRequest.password!,
        signUpRequest.fullName ?? '',
        deviceInfo,
      );

      return Right(response);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, String>> verifySignupOtp(
      SignUpRequest signUpRequest) async {
    try {
      final token = await _dataSource.verifySignUpOtp(
          signUpRequest.phoneNumber!, signUpRequest.otpCode!);
      // save token locally
      await appPreferences.setUserLoggedIn(token);
      return Right(token);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
