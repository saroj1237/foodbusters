import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/favourites/data/datasources/fav_remote_datasource.dart';
import 'package:foodbusters/features/favourites/domain/repositories/fav_repository.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';

class FavRepositoryImpl implements FavRepository {
  final FavRemoteDatasource favRemoteDatasource;
  FavRepositoryImpl(this.favRemoteDatasource);
  @override
  Future<Either<Failure, List<Restaurant>>> getFavouriteRestaurats() async {
    try {
      final restList = await favRemoteDatasource.getFavouriteRestaurats();
      return Right(restList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, String>> addFavouriteRestaurant(String restId) async {
    try {
      final successMessage =
          await favRemoteDatasource.addFavouriteRestaurant(restId);
      return Right(successMessage);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
