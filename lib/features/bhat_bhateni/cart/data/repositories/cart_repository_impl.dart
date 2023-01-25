import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/data/datasources/cart_remote_datasource.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDatasource remoteDataSource;
  CartRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, bool>> addToCart(AddToCartReq req) async {
    try {
      final success = await remoteDataSource.addToCart(req);
      return Right(success);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, CartResponse>> getCart() async {
    try {
      final cartResponse = await remoteDataSource.getCart();
      return Right(cartResponse);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteCartItem(String id) async {
    try {
      final cartResponse = await remoteDataSource.deleteCartItem(id);
      return Right(cartResponse);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
