import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';

abstract class FavRepository {
  Future<Either<Failure, List<Restaurant>>> getFavouriteRestaurats();
  Future<Either<Failure, String>> addFavouriteRestaurant(String restId);
}
