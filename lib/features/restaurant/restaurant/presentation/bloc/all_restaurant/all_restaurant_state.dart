part of 'all_restaurant_cubit.dart';

@freezed
class AllRestaurantState with _$AllRestaurantState {
  const factory AllRestaurantState.initial() = Initial;
  const factory AllRestaurantState.loading() = Loading;
  const factory AllRestaurantState.loaded(List<Restaurant> restaurants) =
      Loaded;
  const factory AllRestaurantState.error(String error) = Error;
}
