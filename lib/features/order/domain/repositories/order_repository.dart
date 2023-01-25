import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';

abstract class OrderRepository {
  Future<Either<Failure, PlaceOrderSuccessRes>> placeOrder(
      PlaceOrderReq reqModel);
  Future<Either<Failure, OrderHistory>> getOrderHistory();
  Future<Either<Failure, OrderHistoryItem>> getOrderHistoryDetail(
      String orderId);
  Future<Either<Failure, num>> calculateDeliveryFee(DeliveryFeeReq req);
  Future<Either<Failure, CouponCodeRes>> applyCoupon(CouponCodeReq req);
}
