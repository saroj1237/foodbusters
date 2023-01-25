import 'package:dartz/dartz.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/featured_item.dart';

import '../../../../../core/error/errors.dart';

abstract class ProductRepository {
  Future<Either<Failure, BBProductPagination>> getCategoryProducts(
      CategoryPaginationRequest request);
  Future<Either<Failure, List<Product>>> getAllProducts();
  Future<Either<Failure, List<Product>>> getAllDeals();
  Future<Either<Failure, List<BBFeaturedItem>>> getFeaturedItems();
  Future<Either<Failure, List<Product>>> getFeaturedItemProducts(String id);
  Future<Either<Failure, Product>> getProductDetail(String id);
}
