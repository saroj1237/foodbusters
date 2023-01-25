import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/authentication/signup/domain/entities/signup_entities.dart';
import 'package:foodbusters/features/authentication/signup/domain/repositories/signup_repository.dart';

class SignUpUseCase implements UseCase<bool, SignUpRequest> {
  final SignUpRepository repository;
  SignUpUseCase(this.repository);
  @override
  Future<Either<Failure, bool>> call(SignUpRequest params) async {
    return await repository.signup(params);
  }

  Future<Either<Failure, String>> verifySignupOtp(SignUpRequest params) async {
    return await repository.verifySignupOtp(params);
  }
}
