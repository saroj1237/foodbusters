import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/bhat_bhateni/search/domain/usecases/search_usecase.dart';
import 'package:foodbusters/features/search/domain/entities/search_entity.dart';

abstract class BBSearchRepository {
  Future<Either<Failure, BBSearchResponse>> startSearch(String query);
  Future<Either<Failure, TrendingRes>> getTrendingSearches();
}
