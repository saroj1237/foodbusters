import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/payment/khalti/domain/entities/khalti_entity.dart';

abstract class KhaltiRepository {
  Future<Either<Failure, bool>> confirmWithBackend(
      KhaltiRequestModel requestModel);
}
