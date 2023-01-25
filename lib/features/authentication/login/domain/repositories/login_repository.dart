import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/authentication/login/domain/entities/login_entity.dart';

abstract class LoginRepository {
  Future<Either<Failure, String>> initLogin(LoginRequest signInRequest);
}
