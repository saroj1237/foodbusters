import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/entities/forgot_password_entity.dart';

abstract class ForgotPasswordRepository {
  Future<Either<Failure, bool>> getForgotPasswordOtp(String mobileNumber);
  Future<Either<Failure, bool>> resetpassword(ForgotPasswordRequest request);
}
