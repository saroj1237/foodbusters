import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/payment/data/datasources/payment_remote_datasource.dart';
import 'package:foodbusters/features/payment/domain/entities/payment_entity.dart';
import 'package:foodbusters/features/payment/domain/repositories/payment_repository.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDatasource remoteDatasource;

  PaymentRepositoryImpl(this.remoteDatasource);

  @override
  Future<Either<Failure, bool>> verifyPayment(PaymentReq data) async {
    try {
      final response = await remoteDatasource.verifyPayment(data);
      return Right(response);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
