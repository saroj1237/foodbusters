import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/featured_item.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/repositories/restaurant_repository.dart';

import '../datasources/restaurant_remote_datasource.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  final RestaurantRemoteDataSource remoteDataSource;
  RestaurantRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, List<Restaurant>>> getRestaurantList(
      String restaurantCategoryId) async {
    try {
      final List<Restaurant> restaurantList =
          await remoteDataSource.getRestaurantList(restaurantCategoryId);
      return Right(restaurantList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Menu>>> getRestaurantMenu(
      String restaurantId) async {
    try {
      final menuList = await remoteDataSource.getRestaurantMenu(restaurantId);
      return Right(menuList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, RestaurantDetail>> getRestaurantDetail(
      String restaurantId) async {
    try {
      final restaurantDetail =
          await remoteDataSource.getRestaurantDetail(restaurantId);
      return Right(restaurantDetail);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Restaurant>>> getAllRestaurants() async {
    try {
      final restaurants = await remoteDataSource.getAllRestaurants();
      return Right(restaurants);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Food>>> getOfferAndDeals() async {
    try {
      final dealsAndOfferFoods = await remoteDataSource.getOfferAndDeals();
      return Right(dealsAndOfferFoods);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Restaurant>>> getFetaturedRestaurants() async {
    try {
      final featuredRestList = await remoteDataSource.getFetaturedRestaurants();
      return Right(featuredRestList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Food>>> getRestaurantFoods(String restId) async {
    try {
      final foods = await remoteDataSource.getRestaurantFoods(restId);
      return Right(foods);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<FeaturedItem>>> getFeaturedItems() async {
    try {
      final featuredItems = await remoteDataSource.getFeaturedItems();
      return Right(featuredItems);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Food>>> getRestaurantOffers(
      String restaurantId) async {
    try {
      final offerFoods =
          await remoteDataSource.getRestaurantOffers(restaurantId);
      return Right(offerFoods);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
