import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/order/domain/repositories/order_repository.dart';

class CouponUsecase implements UseCase<CouponCodeRes, CouponCodeReq> {
  final OrderRepository repository;

  CouponUsecase(this.repository);
  @override
  Future<Either<Failure, CouponCodeRes>> call(CouponCodeReq params) async {
    return await repository.applyCoupon(params);
  }
}
