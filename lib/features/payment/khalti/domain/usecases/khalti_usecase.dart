import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/payment/khalti/domain/entities/khalti_entity.dart';
import 'package:foodbusters/features/payment/khalti/domain/repositories/khalti_repository.dart';

class KhaltiUsecase implements UseCase<bool, KhaltiRequestModel> {
  final KhaltiRepository repository;
  KhaltiUsecase(this.repository);
  @override
  Future<Either<Failure, bool>> call(KhaltiRequestModel params) async {
    return await repository.confirmWithBackend(params);
  }
}
