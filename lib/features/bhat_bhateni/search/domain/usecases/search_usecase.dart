import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/search/domain/repositories/search_repository.dart';
import 'package:foodbusters/features/search/domain/entities/search_entity.dart';

class BBSearchUsecase implements UseCase<BBSearchResponse, String> {
  final BBSearchRepository repository;

  BBSearchUsecase(this.repository);
  @override
  Future<Either<Failure, BBSearchResponse>> call(String query) async {
    return await repository.startSearch(query);
  }
}

class BBTrendingSearchUsecase implements UseCase<TrendingRes, NoParams> {
  final BBSearchRepository repository;

  BBTrendingSearchUsecase(this.repository);
  @override
  Future<Either<Failure, TrendingRes>> call(NoParams noParams) async {
    return await repository.getTrendingSearches();
  }
}

class BBSearchResponse {
  final List<Product> products;
  final Meta meta;

  BBSearchResponse({required this.products, required this.meta});
}
