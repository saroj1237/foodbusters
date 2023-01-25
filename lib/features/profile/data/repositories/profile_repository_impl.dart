import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/services/firebase/local_notification_service.dart';
import 'package:foodbusters/features/profile/domain/entities/profile_entities.dart';
import 'package:foodbusters/features/profile/domain/repositories/profile_repository.dart';
import 'package:foodbusters/injection_container.dart';

import '../datasources/profile_remote_datasource.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;
  ProfileRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, UserModel>> getLoggedInUserInfo() async {
    try {
      final userModel = await remoteDataSource.getLoggedInUserInfo();
      return Right(userModel);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, UserModel>> updateProfile(UpdateProfileReq req) async {
    try {
      final userModel = await remoteDataSource.updateProfile(req);
      //    subscribe to topic for firebase messaging
      final notificationService = sl.get<LocalNotificationService>();
      await notificationService.subscribeTopic(userModel.id!);
      return Right(userModel);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, bool>> changePassword(ChangePasswordReq req) async {
    try {
      final success = await remoteDataSource.changePassword(req);
      return Right(success);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
