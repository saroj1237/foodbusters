import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/profile/domain/entities/profile_entities.dart';

abstract class ProfileRepository {
  Future<Either<Failure, UserModel>> getLoggedInUserInfo();
  Future<Either<Failure, UserModel>> updateProfile(UpdateProfileReq req);
  Future<Either<Failure, bool>> changePassword(ChangePasswordReq req);
}
