import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/repositories/bb_order_repository.dart';

class BbOrderHistoryDetailUsecase
    implements UseCase<BBOrderHistoryDetail, BBOrderHistory> {
  BBOrderRepository repository;
  BbOrderHistoryDetailUsecase(this.repository);
  @override
  Future<Either<Failure, BBOrderHistoryDetail>> call(
      BBOrderHistory params) async {
    return await repository.getBbOrderHistoryDetails(params);
  }
}
