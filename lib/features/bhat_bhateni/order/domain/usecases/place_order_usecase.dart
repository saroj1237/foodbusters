import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/repositories/bb_order_repository.dart';

class BBPlaceOrderUsecase
    implements UseCase<BBPlaceOrderSuccessRes, PlaceOrderReq> {
  BBOrderRepository repository;
  BBPlaceOrderUsecase(this.repository);
  @override
  Future<Either<Failure, BBPlaceOrderSuccessRes>> call(
      PlaceOrderReq params) async {
    return await repository.placeOrder(params);
  }
}

class CalulateBBDeliveryFeeUsecase implements UseCase<num, String> {
  BBOrderRepository repository;
  CalulateBBDeliveryFeeUsecase(this.repository);
  @override
  Future<Either<Failure, num>> call(String addressId) async {
    return await repository.calculateBBDeliveryFee(addressId);
  }
}
