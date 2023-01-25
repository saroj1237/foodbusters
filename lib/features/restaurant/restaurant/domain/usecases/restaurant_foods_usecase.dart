import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/repositories/restaurant_repository.dart';

class RestaurantFoodsUsecase implements UseCase<List<Food>, String> {
  final RestaurantRepository repository;

  RestaurantFoodsUsecase(this.repository);

  @override
  Future<Either<Failure, List<Food>>> call(String params) async {
    return await repository.getRestaurantFoods(params);
  }
}
