import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/repositories/product_repository.dart';

class ProductDetailUsecase implements UseCase<Product, String> {
  final ProductRepository repository;

  ProductDetailUsecase(this.repository);
  @override
  Future<Either<Failure, Product>> call(String params) async {
    return await repository.getProductDetail(params);
  }
}
