import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/favourites/domain/usecases/fav_usecase.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_bloc.freezed.dart';
part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  final GetFavRestaurantUseCase getFavRestaurantUseCase;
  final AddFavRestaurantUsecase addFavRestaurantUsecase;
  FavouriteBloc(
      {required this.getFavRestaurantUseCase,
      required this.addFavRestaurantUsecase})
      : super(const Initial()) {
    on<GetFavouriteRestaurants>(_onGetFavouriteRestaurants);
    on<AddFavouriteRestaurant>(_onAddFavouriteRestaurant);
  }
  _onGetFavouriteRestaurants(
      GetFavouriteRestaurants event, Emitter<FavouriteState> emit) async {
    emit(const FavLoading());
    final failureOrSuccess = await getFavRestaurantUseCase(NoParams());
    failureOrSuccess.fold(
      (failure) {
        if (failure is NetworkFailure) {
          emit(FavouriteState.favRestFailure(
              NetworkExceptions.getErrorMessage(failure.error)));
        }
      },
      (favRestList) {
        emit(FavRestLoaded(favRestList));
      },
    );
  }

  _onAddFavouriteRestaurant(
      AddFavouriteRestaurant event, Emitter<FavouriteState> emit) async {
    emit(const FavLoading());
    final failureOrSuccess = await addFavRestaurantUsecase(event.restId);
    failureOrSuccess.fold(
      (failure) {
        if (failure is NetworkFailure) {
          emit(FavouriteState.addFavRestFailure(
              NetworkExceptions.getErrorMessage(failure.error)));
        }
      },
      (successMessage) {
        emit(AddFavRestSuccess(successMessage));
      },
    );
  }
}
