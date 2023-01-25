import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/entities/resturant_entity.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/repositories/resturant_category_repository.dart';

import '../datasources/resturant_category_remote_datasource.dart';

class ResturantCategoryRepositoryImpl implements ResturantCategoryRepository {
  final ResturantCategoryRemoteDataSource remoteDataSource;

  ResturantCategoryRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, List<RestaurantCategory>>>
      getResturantCategories() async {
    try {
      List<RestaurantCategory> resturantCategories =
          await remoteDataSource.getResturantCategories();

      return Right(resturantCategories);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Either<Failure, List<Restaurant>>> getResturantsList(String id) async {
    try {
      final List<Restaurant> restaurantList =
          await remoteDataSource.getResturantsList(id);
      return Right(restaurantList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
