import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';

abstract class BBCategoryRepository {
  Future<Either<Failure, CategoryPaginationData>> getCategoryList(int page);
  Future<Either<Failure, List<BBSubCategory>>> getSubCategoryList(
      BBCategory category);
  Future<Either<Failure, List<SliderCategory>>> getCategorySlider();
}
