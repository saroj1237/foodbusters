import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/search/data/datasources/search_remote_datasouce.dart';
import 'package:foodbusters/features/search/domain/entities/search_entity.dart';
import 'package:foodbusters/features/search/domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteDatasource remoteDatasource;

  SearchRepositoryImpl(this.remoteDatasource);

  @override
  Future<Either<Failure, SearchRes>> startSearch(String query) async {
    try {
      final result = await remoteDatasource.startSearch(query);
      return Right(result);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Food>>> startResSearch(String query) async {
    try {
      final result = await remoteDatasource.startResSearch(query);
      return Right(result);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, TrendingRes>> getTrendingSearches() async {
    try {
      final result = await remoteDatasource.getTrendingSearches();
      return Right(result);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
