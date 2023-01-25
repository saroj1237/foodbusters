import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';

import '../repositories/restaurant_repository.dart';

class RestaurantUsecase implements UseCase<List<Restaurant>, String> {
  final RestaurantRepository repository;
  RestaurantUsecase(this.repository);
  // for restaurant list of specific category
  @override
  Future<Either<Failure, List<Restaurant>>> call(String params) async {
    return await repository.getRestaurantList(params);
  }

// restaurant detail of a restaurant
  Future<Either<Failure, RestaurantDetail>> getRestaurantDetail(
      String restaurantId) async {
    return await repository.getRestaurantDetail(restaurantId);
  }

  Future<Either<Failure, List<Menu>>> getRestaurantMenu(
      String restaturntId) async {
    return await repository.getRestaurantMenu(restaturntId);
  }

  Future<Either<Failure, List<Restaurant>>> getAllRestaurants() async {
    return await repository.getAllRestaurants();
  }
}
