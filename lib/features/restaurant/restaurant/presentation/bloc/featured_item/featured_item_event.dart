part of 'featured_item_bloc.dart';

@freezed
class FeaturedItemEvent with _$FeaturedItemEvent {
  const factory FeaturedItemEvent.started() = Started;
  const factory FeaturedItemEvent.getFeaturedItems() = GetFeaturedItems;
}
