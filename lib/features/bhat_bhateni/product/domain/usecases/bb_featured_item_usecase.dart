import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/featured_item.dart';

import '../repositories/product_repository.dart';

class BBFeaturedItemUsecase implements UseCase<List<BBFeaturedItem>, NoParams> {
  final ProductRepository repository;
  BBFeaturedItemUsecase(this.repository);

  @override
  Future<Either<Failure, List<BBFeaturedItem>>> call(NoParams params) async {
    return await repository.getFeaturedItems();
  }
}
