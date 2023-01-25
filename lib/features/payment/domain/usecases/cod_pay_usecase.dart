import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/payment/domain/entities/payment_entity.dart';
import 'package:foodbusters/features/payment/domain/repositories/payment_repository.dart';

class PaymentUsecase implements UseCase<bool, PaymentReq> {
  final PaymentRepository paymentRepository;
  PaymentUsecase(this.paymentRepository);
  @override
  Future<Either<Failure, bool>> call(params) async {
    return await paymentRepository.verifyPayment(params);
  }
}
