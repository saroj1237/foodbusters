import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/payment/domain/entities/payment_entity.dart';

abstract class PaymentRepository {
  Future<Either<Failure, bool>> verifyPayment(PaymentReq data);
}
