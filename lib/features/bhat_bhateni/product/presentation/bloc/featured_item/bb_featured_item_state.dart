part of 'bb_featured_item_cubit.dart';

@freezed
class BBFeaturedItemState with _$BBFeaturedItemState {
  const factory BBFeaturedItemState.initial() = Initial;
  const factory BBFeaturedItemState.featuredItemLoading() =
      BBFeaturedItemLoading;
  const factory BBFeaturedItemState.featuredItemError(String error) =
      BBFeaturedItemError;
  const factory BBFeaturedItemState.featuredItemLoaded(
      List<BBFeaturedItem> featuredItems) = BBFeaturedItemLoaded;
}
