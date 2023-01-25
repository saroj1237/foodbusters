import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';

abstract class PartnerRestaurantRepository {
  Future<Either<Failure, List<Restaurant>>> getPartnerRestaurants();
}
