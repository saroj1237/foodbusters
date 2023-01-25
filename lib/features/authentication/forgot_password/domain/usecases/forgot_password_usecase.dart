import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/repositories/forgot_password_repository.dart';

class ForgotPasswordUsecase implements UseCase<bool, ForgotPasswordRequest> {
  final ForgotPasswordRepository repository;
  ForgotPasswordUsecase({required this.repository});
  @override
  Future<Either<Failure, bool>> call(ForgotPasswordRequest params) async {
    return await repository.getForgotPasswordOtp(params.mobileNumber!);
  }

  Future<Either<Failure, bool>> resetPassword(
      ForgotPasswordRequest request) async {
    return await repository.resetpassword(request);
  }
}
