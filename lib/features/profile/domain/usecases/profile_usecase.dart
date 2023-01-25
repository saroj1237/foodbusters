import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/profile/domain/entities/profile_entities.dart';
import 'package:foodbusters/features/profile/domain/repositories/profile_repository.dart';

class ProfileUseCase implements UseCase<UserModel, NoParams> {
  final ProfileRepository repository;
  ProfileUseCase({required this.repository});
  @override
  Future<Either<Failure, UserModel>> call(params) async {
    return await repository.getLoggedInUserInfo();
  }
}

class UpdateProfileUsecase implements UseCase<UserModel, UpdateProfileReq> {
  final ProfileRepository repository;
  UpdateProfileUsecase({required this.repository});
  @override
  Future<Either<Failure, UserModel>> call(UpdateProfileReq request) async {
    return await repository.updateProfile(request);
  }
}

class ChangePasswordUsecase implements UseCase<bool, ChangePasswordReq> {
  final ProfileRepository repository;
  ChangePasswordUsecase({required this.repository});
  @override
  Future<Either<Failure, bool>> call(ChangePasswordReq request) async {
    return await repository.changePassword(request);
  }
}
