import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/repositories/restaurant_repository.dart';

class FeaturedRestaurantUsecase implements UseCase<List<Restaurant>, NoParams> {
  final RestaurantRepository repository;

  FeaturedRestaurantUsecase(this.repository);
  @override
  Future<Either<Failure, List<Restaurant>>> call(NoParams params) async {
    return await repository.getFetaturedRestaurants();
  }
}
