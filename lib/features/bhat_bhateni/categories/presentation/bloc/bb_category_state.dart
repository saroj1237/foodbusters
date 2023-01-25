part of 'bb_category_bloc.dart';

@freezed
class BbCategoryState with _$BbCategoryState {
  const factory BbCategoryState.initial() = Initial;
  const factory BbCategoryState.loading() = Loading;
  const factory BbCategoryState.successState({
    required BbCategoryLoaded data,
  }) = SuccessState;
  const factory BbCategoryState.failureState() = FailureState;
}

@freezed
class BbCategoryLoaded with _$BbCategoryLoaded {
  const factory BbCategoryLoaded({
    required CategoryPaginationData categoryPaginationDatacategories,
    String? selectedSubCategoryId,
    List<BBSubCategory>? subcategories,
  }) = _BbCategoryLoaded;
}
