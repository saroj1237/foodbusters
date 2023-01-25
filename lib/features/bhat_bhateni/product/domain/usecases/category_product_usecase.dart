import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/repositories/product_repository.dart';

class CategoryProductsUsecase
    implements UseCase<BBProductPagination, CategoryPaginationRequest> {
  final ProductRepository repository;
  CategoryProductsUsecase(this.repository);
  @override
  Future<Either<Failure, BBProductPagination>> call(
      CategoryPaginationRequest params) async {
    return await repository.getCategoryProducts(params);
  }
}
