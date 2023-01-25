import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/entities/resturant_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/usecases/resturant_category_usecase.dart';

part 'restaurant_category_bloc.freezed.dart';
part 'restaurant_category_event.dart';
part 'restaurant_category_state.dart';

class RestaurantCategoryBloc
    extends Bloc<RestaurantCategoryEvent, RestaurantCategoryState> {
  final ResturantCategoryUsecase usecase;
  RestaurantCategoryBloc(this.usecase)
      : super(const RestaurantCategoryState.initial()) {
    on<GetRestaurantCategory>(
      (event, emit) async {
        emit(const GetRestaurantCategoryLoading());
        final failureOrRestaurants = await usecase.call(NoParams());
        failureOrRestaurants.fold((failure) {
          emit(const GetRestaurantCategoryFailure());
        }, (resutarants) {
          // GetRestaurantCategorySuccess.copyWith(restaurantCategories:[] );
          emit(GetRestaurantCategorySuccess(restaurantCategories: resutarants));
        });
      },
    );
  }
}
