part of 'featured_item_bloc.dart';

@freezed
class FeaturedItemState with _$FeaturedItemState {
  const factory FeaturedItemState.initial() = Initial;
  const factory FeaturedItemState.featuredItemsLoading() = FeaturedItemsLoading;
  const factory FeaturedItemState.featuredItemsFailure(String error) =
      FeaturedItemsFailure;
  const factory FeaturedItemState.featuredItemsLoaded(
      List<FeaturedItem> featuredItems) = FeaturedItemsLoaded;
}
