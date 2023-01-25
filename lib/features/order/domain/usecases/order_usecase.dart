import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/order/domain/repositories/order_repository.dart';

class OrderUsecase implements UseCase<PlaceOrderSuccessRes, PlaceOrderReq> {
  final OrderRepository repository;
  OrderUsecase(this.repository);
  @override
  Future<Either<Failure, PlaceOrderSuccessRes>> call(
      PlaceOrderReq params) async {
    return await repository.placeOrder(params);
  }
}
