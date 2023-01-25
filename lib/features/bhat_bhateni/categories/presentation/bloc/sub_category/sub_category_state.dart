part of 'sub_category_bloc.dart';

@freezed
class SubCategoryState with _$SubCategoryState {
  const factory SubCategoryState.initial() = Initial;
  const factory SubCategoryState.subCategoriesLoading() = SubCategoriesLoading;
  const factory SubCategoryState.subCategoriesError(String error) =
      SubCategoriesError;
  const factory SubCategoryState.subCategoriesLoaded(
      List<BBSubCategory> subCategories,
      BBSubCategory? selectedSubCategory) = SubCategoriesLoaded;
}
