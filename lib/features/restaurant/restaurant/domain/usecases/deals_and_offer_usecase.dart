import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/repositories/restaurant_repository.dart';

class DealsAndOfferUsecase implements UseCase<List<Food>, NoParams> {
  final RestaurantRepository repository;

  DealsAndOfferUsecase(this.repository);

  @override
  Future<Either<Failure, List<Food>>> call(NoParams params) async {
    return await repository.getOfferAndDeals();
  }
}
