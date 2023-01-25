import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/restaurant/new_partners/data/datasources/partner_rest_remote_datasource.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/repositories/partner_rest_repository.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';

class PartnerRestaurantRepositoryImpl implements PartnerRestaurantRepository {
  final PartnerRestaurantRemoteDataSource remoteDataSource;
  PartnerRestaurantRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, List<Restaurant>>> getPartnerRestaurants() async {
    try {
      final restList = await remoteDataSource.getPartnerRestaurants();
      return Right(restList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
