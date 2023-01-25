import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/search/data/datasources/search_remote_datasouce.dart';
import 'package:foodbusters/features/bhat_bhateni/search/domain/repositories/search_repository.dart';
import 'package:foodbusters/features/search/domain/entities/search_entity.dart';

import '../../domain/usecases/search_usecase.dart';

class BBSearchRepositoryImpl implements BBSearchRepository {
  final BBSearchRemoteDatasource remoteDatasource;

  BBSearchRepositoryImpl(this.remoteDatasource);

  @override
  Future<Either<Failure, BBSearchResponse>> startSearch(String query) async {
    try {
      final result = await remoteDatasource.startSearch(query);
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
