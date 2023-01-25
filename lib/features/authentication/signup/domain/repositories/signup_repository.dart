import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/authentication/signup/domain/entities/signup_entities.dart';

abstract class SignUpRepository {
  Future<Either<Failure, bool>> signup(SignUpRequest signUpRequest);
  Future<Either<Failure, String>> verifySignupOtp(SignUpRequest signUpRequest);
}
