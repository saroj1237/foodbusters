import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/usecases/resturant_category_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_list_event.dart';
part 'restaurant_list_state.dart';
part 'restaurant_list_bloc.freezed.dart';

class RestaurantListBloc
    extends Bloc<RestaurantListEvent, RestaurantListState> {
  ResturantsListUsecase resturantsListUsecase;
  RestaurantListBloc({required this.resturantsListUsecase})
      : super(const Initial()) {
    on<GetRestaurantsList>((event, emit) async {
      emit(const RestaurantsListLoading());
      final failureOrRestaurants =
          await resturantsListUsecase.call((event.resId));
      failureOrRestaurants.fold((failure) {
        emit(RestaurantsListError(failure.toString()));
      }, (resutarants) {
        emit(RestaurantsListLoaded(resutarants));
      });
    });
  }
}
