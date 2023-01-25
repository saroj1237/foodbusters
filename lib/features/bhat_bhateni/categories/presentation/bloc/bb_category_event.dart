part of 'bb_category_bloc.dart';

@freezed
class BbCategoryEvent with _$BbCategoryEvent {
  const factory BbCategoryEvent.getBBCategoryList() = GetBBCategoryList;
  const factory BbCategoryEvent.getBBCategoryNextPage(int page) =
      GetBBCategoryNextPage;
  // const factory BbCategoryEvent.getBBSubCategoryList(BBCategory category) =
  //     GetBBSubCategoryList;
  // const factory BbCategoryEvent.changeSubCategory(String subCategoryId) =
  //     ChangeSubCategory;
}
