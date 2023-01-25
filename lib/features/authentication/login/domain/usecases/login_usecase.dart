import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/authentication/login/domain/entities/login_entity.dart';
import 'package:foodbusters/features/authentication/login/domain/repositories/login_repository.dart';

class LoginUseCase implements UseCase<String, LoginRequest> {
  final LoginRepository repository;
  LoginUseCase(this.repository);
  @override
  Future<Either<Failure, String>> call(LoginRequest params) async {
    return await repository.initLogin(params);
  }
}
