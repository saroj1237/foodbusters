import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/repositories/product_repository.dart';

import '../entities/bb_product_entity.dart';

class FeaturedItemProductsUsecase implements UseCase<List<Product>, String> {
  final ProductRepository productRepository;

  FeaturedItemProductsUsecase(this.productRepository);
  @override
  Future<Either<Failure, List<Product>>> call(String params) async {
    return await productRepository.getFeaturedItemProducts(params);
  }
}
