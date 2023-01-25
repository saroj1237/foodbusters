import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/authentication/forgot_password/data/remote_datasources/forgot_password_remote_datasource.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/repositories/forgot_password_repository.dart';

class ForgotPasswordRepositoryImpl implements ForgotPasswordRepository {
  final ForgotPasswordRemoteDatasource remoteDatasource;
  ForgotPasswordRepositoryImpl(this.remoteDatasource);
  @override
  Future<Either<Failure, bool>> getForgotPasswordOtp(
      String mobileNumber) async {
    try {
      final trueOrFalse =
          await remoteDatasource.getForgotPasswordOtp(mobileNumber);
      return Right(trueOrFalse);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, bool>> resetpassword(
      ForgotPasswordRequest request) async {
    try {
      final trueOrFalse = await remoteDatasource.resetPassword(request);
      return Right(trueOrFalse);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
