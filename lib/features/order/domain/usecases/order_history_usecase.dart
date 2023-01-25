import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/order/domain/repositories/order_repository.dart';

class OrderHistoryUsecase implements UseCase<OrderHistory, NoParams> {
  final OrderRepository repository;
  OrderHistoryUsecase(this.repository);
  @override
  Future<Either<Failure, OrderHistory>> call(params) async {
    return await repository.getOrderHistory();
  }
}

class OrderHistoryDetailUsecase implements UseCase<OrderHistoryItem, String> {
  final OrderRepository repository;

  OrderHistoryDetailUsecase(this.repository);
  @override
  Future<Either<Failure, OrderHistoryItem>> call(String orderId) async {
    return await repository.getOrderHistoryDetail(orderId);
  }
}
