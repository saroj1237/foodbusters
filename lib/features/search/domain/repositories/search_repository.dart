import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/search/domain/entities/search_entity.dart';

abstract class SearchRepository {
  Future<Either<Failure, SearchRes>> startSearch(String query);
  Future<Either<Failure, List<Food>>> startResSearch(String query);
  Future<Either<Failure, TrendingRes>> getTrendingSearches();
}
