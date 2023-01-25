import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/repositories/bb_category_repository.dart';

class BBCategorySliderUsecase
    implements UseCase<List<SliderCategory>, NoParams> {
  final BBCategoryRepository repository;
  BBCategorySliderUsecase(this.repository);
  @override
  Future<Either<Failure, List<SliderCategory>>> call(params) async {
    return await repository.getCategorySlider();
  }
}
