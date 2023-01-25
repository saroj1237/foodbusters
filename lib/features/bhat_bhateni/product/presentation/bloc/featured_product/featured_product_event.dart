part of 'featured_product_bloc.dart';

@freezed
class FeaturedProductEvent with _$FeaturedProductEvent {
  const factory FeaturedProductEvent.getFeaturedProducts(
      String featuredItemId) = GetFeaturedProducts;
}
