import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/featured_item.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/repositories/restaurant_repository.dart';

class FeaturedItemUsecase implements UseCase<List<FeaturedItem>, NoParams> {
  final RestaurantRepository repository;

  FeaturedItemUsecase(this.repository);
  @override
  Future<Either<Failure, List<FeaturedItem>>> call(NoParams params) async {
    return await repository.getFeaturedItems();
  }
}
