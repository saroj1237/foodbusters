import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/featured_restaurant_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/restaurant_foods_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_restaurant_bloc.freezed.dart';
part 'featured_restaurant_event.dart';
part 'featured_restaurant_state.dart';

class FeaturedRestaurantBloc
    extends Bloc<FeaturedRestaurantEvent, FeaturedRestaurantState> {
  final FeaturedRestaurantUsecase usecase;
  final RestaurantFoodsUsecase foodsUsecase;
  Map<String, List<Food>> featuredRestaurantFoods = {};
  FeaturedRestaurantBloc(this.usecase, this.foodsUsecase)
      : super(const Initial()) {
    on<GetFeatturedRestaurants>(_onGetFeaturedRestaurants);
    on<GetRestaurantFoods>(_onGetRestaurantFoods);
  }

  void _onGetFeaturedRestaurants(GetFeatturedRestaurants event,
      Emitter<FeaturedRestaurantState> emit) async {
    emit(const FeaturedRestaurantLoading());
    final failureOrRestaurants = await usecase(NoParams());
    failureOrRestaurants.fold((failure) {
      if (failure is NetworkFailure) {
        emit(FeaturedRestaurantFailure(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (restaurants) {
      if (restaurants.isNotEmpty) {
        add(GetRestaurantFoods(restaurants[0]));
      }
      emit(FeaturedRestaurantLoaded(
          featuredRestaurants: restaurants, selectedRest: restaurants[0]));
    });
  }

  _onGetRestaurantFoods(
      GetRestaurantFoods event, Emitter<FeaturedRestaurantState> emit) async {
    final state = this.state;
    if (state is FeaturedRestaurantLoaded) {
      if (featuredRestaurantFoods.containsKey(event.restaurant.id)) {
        var foods = featuredRestaurantFoods[event.restaurant.id];
        emit(state.copyWith(foodList: foods, selectedRest: event.restaurant));
      } else {
        final failureOrFoods = await foodsUsecase(event.restaurant.id);
        failureOrFoods.fold((l) {
          emit(state.copyWith(foodList: [], selectedRest: event.restaurant));
        }, (foods) {
          if (foods.isNotEmpty) {
            featuredRestaurantFoods[event.restaurant.id] = foods;
          }
          emit(state.copyWith(foodList: foods, selectedRest: event.restaurant));
        });
      }
    } else {
      emit(state);
    }
  }
}
