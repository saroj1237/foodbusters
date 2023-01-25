import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/restaurant_offer_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../new_partners/domain/entities/entiry.dart';

part 'restaurant_offer_cubit.freezed.dart';
part 'restaurant_offer_state.dart';

class RestaurantOfferCubit extends Cubit<RestaurantOfferState> {
  final RestaurantOfferUsecase usecase;
  Map<String, List<Food>> loadedOffers = {};
  RestaurantOfferCubit(this.usecase)
      : super(const RestaurantOfferState.initial());

  void getRestaurantOffers(String restaurantId) async {
    if (loadedOffers.containsKey(restaurantId)) {
      var offerFoods = loadedOffers[restaurantId];
      emit(RestaurantOfferLoaded(offerFoods!));
    } else {
      emit(const RestaurantOfferLoading());
      final failureOrFoods = await usecase(restaurantId);
      failureOrFoods.fold((failure) {
        if (failure is NetworkFailure) {
          emit(RestaurantOfferFailure(
              NetworkExceptions.getErrorMessage(failure.error)));
        }
      }, (offerFoods) {
        if (offerFoods.isNotEmpty) {
          loadedOffers[restaurantId] = offerFoods;
        }
        emit(RestaurantOfferLoaded(offerFoods));
      });
    }
  }
}
