import 'package:dartz/dartz.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/favourites/domain/repositories/fav_repository.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';

class GetFavRestaurantUseCase implements UseCase<List<Restaurant>, NoParams> {
  final FavRepository favRepository;
  GetFavRestaurantUseCase(this.favRepository);
  @override
  Future<Either<Failure, List<Restaurant>>> call(NoParams params) async {
    return await favRepository.getFavouriteRestaurats();
  }
}

class AddFavRestaurantUsecase implements UseCase<String, String> {
  final FavRepository favRepository;
  AddFavRestaurantUsecase(this.favRepository);
  @override
  Future<Either<Failure, String>> call(String restId) async {
    return await favRepository.addFavouriteRestaurant(restId);
  }
}
