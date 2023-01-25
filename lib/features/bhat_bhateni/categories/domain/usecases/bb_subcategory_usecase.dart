import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/repositories/bb_category_repository.dart';

class BBSubCategoryUsecase implements UseCase<List<BBSubCategory>, BBCategory> {
  final BBCategoryRepository repository;
  BBSubCategoryUsecase(this.repository);
  @override
  Future<Either<Failure, List<BBSubCategory>>> call(params) async {
    return await repository.getSubCategoryList(params);
  }
}
