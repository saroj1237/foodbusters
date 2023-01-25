part of 'sub_category_bloc.dart';

@freezed
class SubCategoryEvent with _$SubCategoryEvent {
  const factory SubCategoryEvent.getBBSubCategoryList(BBCategory category) =
      GetBBSubCategoryList;
  const factory SubCategoryEvent.changeActiveSubCategory(
      BBSubCategory subCategory) = ChangeActiveSubCategory;
}
