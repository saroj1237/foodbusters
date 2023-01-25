import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/search/domain/entities/search_entity.dart';
import 'package:foodbusters/features/search/domain/repositories/search_repository.dart';

class SearchUsecase implements UseCase<SearchRes, String> {
  final SearchRepository repository;

  SearchUsecase(this.repository);
  @override
  Future<Either<Failure, SearchRes>> call(String query) async {
    return await repository.startSearch(query);
  }
}

class RestaurantSearchUsecase implements UseCase<List<Food>, String> {
  final SearchRepository repository;

  RestaurantSearchUsecase(this.repository);
  @override
  Future<Either<Failure, List<Food>>> call(String query) async {
    return await repository.startResSearch(query);
  }
}

class TrendingSearchUsecase implements UseCase<TrendingRes, NoParams> {
  final SearchRepository repository;

  TrendingSearchUsecase(this.repository);
  @override
  Future<Either<Failure, TrendingRes>> call(NoParams noParams) async {
    return await repository.getTrendingSearches();
  }
}
