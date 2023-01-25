import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/data/datasources/product_remote_datasource.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/featured_item.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDatasource remoteDatasource;
  ProductRepositoryImpl(this.remoteDatasource);
  @override
  Future<Either<Failure, BBProductPagination>> getCategoryProducts(
      CategoryPaginationRequest request) async {
    try {
      final productList = await remoteDatasource.getCategoryProducts(
          request.subCategories.id, request.pageIndex);
      return Right(productList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getAllProducts() async {
    try {
      final productList = await remoteDatasource.getAllProducts();
      return Right(productList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getAllDeals() async {
    try {
      final productList = await remoteDatasource.getAllDeals();
      return Right(productList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<BBFeaturedItem>>> getFeaturedItems() async {
    try {
      final productList = await remoteDatasource.getFeaturedItems();
      return Right(productList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getFeaturedItemProducts(
      String id) async {
    try {
      final productList = await remoteDatasource.getFeaturedItemProducts(id);
      return Right(productList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, Product>> getProductDetail(String id) async {
    try {
      final productList = await remoteDatasource.getProductDetail(id);
      return Right(productList);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
