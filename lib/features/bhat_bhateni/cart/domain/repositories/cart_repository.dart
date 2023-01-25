import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';

abstract class CartRepository {
  Future<Either<Failure, bool>> addToCart(AddToCartReq req);
  Future<Either<Failure, CartResponse>> getCart();
  Future<Either<Failure, bool>> deleteCartItem(String id);
}
