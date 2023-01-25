import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/app/app_prefes.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bag/data/datasources/bag_remote_datasource.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/bag/domain/repositories/bag_repository.dart';

class BagRepositoryImpl implements BagRepository {
  final BagRemoteDataSource remoteDataSource;
  final AppPreferences appPreferences;
  BagRepositoryImpl(this.remoteDataSource, this.appPreferences);

  @override
  Future<Either<Failure, List<BagItem>>> getBagItems() async {
    try {
      final itemList = await remoteDataSource.getBagItems();
      return Right(itemList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, String>> addItemTobag(
    AddTobagRequest request,
    String foodId,
  ) async {
    try {
      final myString = await remoteDataSource.addItemTobag(request, foodId);
      return Right(myString);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, bool>> removeBagItem(String restaurantId) async {
    try {
      final success = await remoteDataSource.removeBagItem(restaurantId);
      return Right(success);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, bool>> removeFood(String foodId) async {
    try {
      final success = await remoteDataSource.removeFood(foodId);
      return Right(success);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
