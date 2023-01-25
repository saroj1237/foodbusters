import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/repositories/restaurant_repository.dart';

import '../entities/entity.dart';

class RestaurantOfferUsecase implements UseCase<List<Food>, String> {
  final RestaurantRepository repository;

  RestaurantOfferUsecase(this.repository);
  @override
  Future<Either<Failure, List<Food>>> call(String params) async {
    return await repository.getRestaurantOffers(params);
  }
}
