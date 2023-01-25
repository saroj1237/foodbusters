import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/order/data/datasources/order_remote_datasource.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/order/domain/repositories/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderRemoteDataSource remoteDataSource;

  OrderRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, PlaceOrderSuccessRes>> placeOrder(
      PlaceOrderReq reqModel) async {
    try {
      final success = await remoteDataSource.placeOrder(reqModel);
      return Right(success);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, OrderHistory>> getOrderHistory() async {
    try {
      final orderHistoryList = await remoteDataSource.getOrderHistory();
      return Right(orderHistoryList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, num>> calculateDeliveryFee(DeliveryFeeReq req) async {
    try {
      final deliveryFee = await remoteDataSource.calculateDeliveryFee(req);
      return Right(deliveryFee);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, CouponCodeRes>> applyCoupon(CouponCodeReq req) async {
    try {
      final couponAmount = await remoteDataSource.applyCoupon(req);
      return Right(couponAmount);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, OrderHistoryItem>> getOrderHistoryDetail(
      String orderId) async {
    try {
      final itemDetail = await remoteDataSource.getOrderHistoryDetail(orderId);
      return Right(itemDetail);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
