import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/order/data/datasources/bb_order_remote_datasource.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/repositories/bb_order_repository.dart';

class BBOrderRepositoryImpl implements BBOrderRepository {
  final BBOrderRemoteDatasource remoteDatasource;
  BBOrderRepositoryImpl(this.remoteDatasource);
  @override
  Future<Either<Failure, BBPlaceOrderSuccessRes>> placeOrder(
      PlaceOrderReq orderRequest) async {
    try {
      final response = await remoteDatasource.placeOrder(orderRequest);
      return Right(response);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, num>> calculateBBDeliveryFee(String addressId) async {
    try {
      final response = await remoteDatasource.calculateBBDeliveryFee(addressId);
      return Right(response);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<BBOrderHistory>>> getBbOrderHistories() async {
    try {
      final response = await remoteDatasource.getBbOrderHistories();
      return Right(response);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, BBOrderHistoryDetail>> getBbOrderHistoryDetails(
      BBOrderHistory orderHistory) async {
    try {
      final response =
          await remoteDatasource.getBbOrderHistoryDetails(orderHistory);
      return Right(response);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
