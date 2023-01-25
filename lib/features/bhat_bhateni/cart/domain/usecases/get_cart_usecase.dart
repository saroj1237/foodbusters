import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/repositories/cart_repository.dart';

class GetCartUsecase implements UseCase<CartResponse, NoParams> {
  final CartRepository repository;
  GetCartUsecase(this.repository);
  @override
  Future<Either<Failure, CartResponse>> call(NoParams params) async {
    return await repository.getCart();
  }
}
