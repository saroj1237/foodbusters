part of 'product_detail_cubit.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial() = Initial;
  const factory ProductDetailState.productDetailLoading() =
      ProductDetailLoading;
  const factory ProductDetailState.productDetailFailure(String error) =
      ProductDetailFailure;
  const factory ProductDetailState.productDetailLoaded(Product product) =
      ProductDetailLoaded;
}
