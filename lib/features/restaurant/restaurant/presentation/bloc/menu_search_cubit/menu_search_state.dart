part of 'menu_search_cubit.dart';

@freezed
class MenuSearchState with _$MenuSearchState {
  const factory MenuSearchState.initial() = Initial;
  const factory MenuSearchState.menuSearchLoading() = MenuSearchLoading;
  const factory MenuSearchState.menuSearchFailure(String error) =
      MenuSearchFailure;
  const factory MenuSearchState.menuSearchLoaded(List<Food> foods) =
      MenuSearchLoaded;
}
