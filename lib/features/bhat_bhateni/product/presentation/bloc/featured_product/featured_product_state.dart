part of 'featured_product_bloc.dart';

@freezed
class FeaturedProductState with _$FeaturedProductState {
  const factory FeaturedProductState.initial() = Initial;
  const factory FeaturedProductState.featuredProductsLoading() =
      FeaturedProductsLoading;
  const factory FeaturedProductState.featuredProductsError(String error) =
      FeaturedProductsError;
  const factory FeaturedProductState.featuredProductsLoaded(
      List<Product> products) = FeaturedProductsLoaded;
}
