import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/entities/resturant_entity.dart';

abstract class ResturantCategoryRepository {
  Future<Either<Failure, List<RestaurantCategory>>> getResturantCategories();
  Future<Either<Failure, List<Restaurant>>> getResturantsList(String id);
}
