import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/order/domain/repositories/order_repository.dart';

class DeliveryFeeUsecase implements UseCase<num, DeliveryFeeReq> {
  final OrderRepository repository;

  DeliveryFeeUsecase(this.repository);

  @override
  Future<Either<Failure, num>> call(params) async {
    return await repository.calculateDeliveryFee(params);
  }
}
