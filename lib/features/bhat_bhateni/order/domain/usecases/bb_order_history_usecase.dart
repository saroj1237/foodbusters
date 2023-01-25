import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/repositories/bb_order_repository.dart';

import '../../../../../core/usecases/base_usecase.dart';

class BbOrderHistoryUsecase implements UseCase<List<BBOrderHistory>, NoParams> {
  BBOrderRepository repository;
  BbOrderHistoryUsecase(this.repository);
  @override
  Future<Either<Failure, List<BBOrderHistory>>> call(params) async {
    return await repository.getBbOrderHistories();
  }
}
