import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';

abstract class BBOrderRepository {
  Future<Either<Failure, BBPlaceOrderSuccessRes>> placeOrder(
      PlaceOrderReq orderRequest);

  Future<Either<Failure, num>> calculateBBDeliveryFee(String addressId);

  Future<Either<Failure, List<BBOrderHistory>>> getBbOrderHistories();
  Future<Either<Failure, BBOrderHistoryDetail>> getBbOrderHistoryDetails(
      BBOrderHistory orderHistory);
}
