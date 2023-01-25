import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/data/datasources/bb_category_remote_datasource.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/repositories/bb_category_repository.dart';

class BBCategoryRepositoryImpl implements BBCategoryRepository {
  final BBCategoryRemoteDataSource remoteDataSource;
  BBCategoryRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, CategoryPaginationData>> getCategoryList(
      int page) async {
    try {
      final categories = await remoteDataSource.getCategoryList(page);
      return Right(categories);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<BBSubCategory>>> getSubCategoryList(
      BBCategory category) async {
    try {
      final categories = await remoteDataSource.getSubCategoryList(category.id);
      return Right(categories);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }

  @override
  Future<Either<Failure, List<SliderCategory>>> getCategorySlider() async {
    try {
      final slider = await remoteDataSource.getCategorySlider();
      return Right(slider);
    } catch (e) {
      return Left(NetworkFailure(NetworkExceptions.getDioException(e)));
    }
  }
}
