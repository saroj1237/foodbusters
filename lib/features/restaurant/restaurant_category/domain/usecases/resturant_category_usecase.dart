import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/entities/resturant_entity.dart';

import '../repositories/resturant_category_repository.dart';

class ResturantCategoryUsecase
    implements UseCase<List<RestaurantCategory>, NoParams> {
  final ResturantCategoryRepository repository;
  ResturantCategoryUsecase(this.repository);
  @override
  Future<Either<Failure, List<RestaurantCategory>>> call(
      NoParams params) async {
    return await repository.getResturantCategories();
  }
}

class ResturantsListUsecase implements UseCase<List<Restaurant>, String> {
  final ResturantCategoryRepository repository;
  ResturantsListUsecase(this.repository);
  @override
  Future<Either<Failure, List<Restaurant>>> call(String id) async {
    return await repository.getResturantsList(id);
  }
}
