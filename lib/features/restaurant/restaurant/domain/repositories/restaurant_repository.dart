import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/featured_item.dart';

abstract class RestaurantRepository {
  Future<Either<Failure, List<Restaurant>>> getRestaurantList(
      String restaurantCategoryId);
  Future<Either<Failure, List<Menu>>> getRestaurantMenu(String restaurantId);
  Future<Either<Failure, RestaurantDetail>> getRestaurantDetail(
      String restaurantId);
  Future<Either<Failure, List<Restaurant>>> getAllRestaurants();
  Future<Either<Failure, List<Food>>> getOfferAndDeals();
  Future<Either<Failure, List<Restaurant>>> getFetaturedRestaurants();
  Future<Either<Failure, List<Food>>> getRestaurantFoods(String restId);
  Future<Either<Failure, List<FeaturedItem>>> getFeaturedItems();
  Future<Either<Failure, List<Food>>> getRestaurantOffers(String restaurantId);
}
