part of 'category_search_cubit.dart';

@freezed
class CategorySearchState with _$CategorySearchState {
  const factory CategorySearchState.initial() = Initial;
  const factory CategorySearchState.categorySearchLoading() =
      CategorySearchLoading;
  const factory CategorySearchState.categorySearchError(String error) =
      CategorySearchError;
  const factory CategorySearchState.categorySearchLoaded(
      List<BBCategory> categories) = CategorySearchLoaded;
}
