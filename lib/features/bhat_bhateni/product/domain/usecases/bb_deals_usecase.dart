import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/repositories/product_repository.dart';

class BBDealsUsecase implements UseCase<List<Product>, NoParams> {
  final ProductRepository repository;
  BBDealsUsecase(this.repository);
  @override
  Future<Either<Failure, List<Product>>> call(NoParams noParams) async {
    return await repository.getAllDeals();
  }
}
