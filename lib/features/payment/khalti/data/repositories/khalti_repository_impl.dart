import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/payment/khalti/data/datasources/khalti_remote_datasource.dart';
import 'package:foodbusters/features/payment/khalti/domain/entities/khalti_entity.dart';
import 'package:foodbusters/features/payment/khalti/domain/repositories/khalti_repository.dart';

class KhaltiRepositoryImpl implements KhaltiRepository {
  final KhaltiRemoteDatasource remoteDatasource;
  KhaltiRepositoryImpl(this.remoteDatasource);
  @override
  Future<Either<Failure, bool>> confirmWithBackend(
      KhaltiRequestModel requestModel) async {
    try {
      final success = await remoteDatasource.confirmWithBackend(requestModel);
      return Right(success);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
