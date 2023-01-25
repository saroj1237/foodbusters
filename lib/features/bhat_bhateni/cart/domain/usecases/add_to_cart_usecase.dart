import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/repositories/cart_repository.dart';

class AddToCartUsecase implements UseCase<bool, AddToCartReq> {
  final CartRepository repository;
  AddToCartUsecase(this.repository);
  @override
  Future<Either<Failure, bool>> call(AddToCartReq params) async {
    return await repository.addToCart(params);
  }
}
