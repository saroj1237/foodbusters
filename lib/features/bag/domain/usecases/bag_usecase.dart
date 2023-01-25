import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';

import '../repositories/bag_repository.dart';

class BagUsecase implements UseCase<List<BagItem>, NoParams> {
  final BagRepository repository;
  BagUsecase(this.repository);
  @override
  Future<Either<Failure, List<BagItem>>> call(params) async {
    return await repository.getBagItems();
  }

  Future<Either<Failure, String>> addItemTobag(
      AddTobagRequest request, String foodId) async {
    return await repository.addItemTobag(request, foodId);
  }

  Future<Either<Failure, bool>> removeBagItem(String restaurantId) async {
    return await repository.removeBagItem(restaurantId);
  }

  Future<Either<Failure, bool>> removeFood(String foodId) async {
    return await repository.removeFood(foodId);
  }
}
