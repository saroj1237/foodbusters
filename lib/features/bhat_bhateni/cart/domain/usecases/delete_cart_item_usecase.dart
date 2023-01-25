import 'package:dartz/dartz.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/repositories/cart_repository.dart';

import '../../../../../core/error/errors.dart';
import '../../../../../core/usecases/base_usecase.dart';

class DeleteCartItemUsecase implements UseCase<bool, String> {
  final CartRepository repository;
  DeleteCartItemUsecase(this.repository);
  @override
  Future<Either<Failure, bool>> call(params) async {
    return await repository.deleteCartItem(params);
  }
}
