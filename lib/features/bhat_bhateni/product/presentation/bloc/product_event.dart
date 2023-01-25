part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getSubCategoryProducts(
      {required BBSubCategory subCategory,
      required int pageIndex}) = GetSubCategoryProducts;
  const factory ProductEvent.getSubCategoryNextProducts(
      {required BBSubCategory subCategory,
      required int pageIndex}) = GetSubCategoryNextProducts;

  const factory ProductEvent.getAllProducts() = GetAllProducts;
  const factory ProductEvent.resetProductState() = ResetProductState;
}
