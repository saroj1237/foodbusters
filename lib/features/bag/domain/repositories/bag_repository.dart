import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';

abstract class BagRepository {
  Future<Either<Failure, List<BagItem>>> getBagItems();
  Future<Either<Failure, String>> addItemTobag(
      AddTobagRequest request, String foodId);

  Future<Either<Failure, bool>> removeBagItem(String restaurantId);
  Future<Either<Failure, bool>> removeFood(String foodId);
}
