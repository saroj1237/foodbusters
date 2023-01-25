import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/usecases/bb_category_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bb_category_bloc.freezed.dart';
part 'bb_category_event.dart';
part 'bb_category_state.dart';

class BbCategoryBloc extends Bloc<BbCategoryEvent, BbCategoryState> {
  final BBCategoryUsecase categoryUsecase;
  List<BBCategory> finalCategories = [];

  BbCategoryBloc({required this.categoryUsecase})
      : super(const BbCategoryState.initial()) {
    on<GetBBCategoryList>(_onGetBBCategoryList);
    on<GetBBCategoryNextPage>(_onGetBBCategoryNxtPage);
  }
  void _onGetBBCategoryList(
      GetBBCategoryList event, Emitter<BbCategoryState> emit) async {
    final failureOrList = await categoryUsecase(1);
    failureOrList.fold((failure) {
      emit(const FailureState());
    }, (categories) {
      finalCategories = categories.categories;
      emit(SuccessState(
          data:
              BbCategoryLoaded(categoryPaginationDatacategories: categories)));
    });
  }

  void _onGetBBCategoryNxtPage(
      GetBBCategoryNextPage event, Emitter<BbCategoryState> emit) async {
    final failureOrList = await categoryUsecase(event.page);
    failureOrList.fold((failure) {
      emit(const FailureState());
    }, (categories) {
      finalCategories = finalCategories + categories.categories;
      CategoryPaginationData finalData = CategoryPaginationData(
          categories: finalCategories, meta: categories.meta);
      emit(SuccessState(
          data: BbCategoryLoaded(categoryPaginationDatacategories: finalData)));
    });
  }
}
