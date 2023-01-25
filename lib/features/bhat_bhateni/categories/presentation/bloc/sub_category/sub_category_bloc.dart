import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/error/errors.dart';
import 'package:foodbusters/core/error/network_exceptions.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/usecases/bb_subcategory_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category_bloc.freezed.dart';
part 'sub_category_event.dart';
part 'sub_category_state.dart';

class SubCategoryBloc extends Bloc<SubCategoryEvent, SubCategoryState> {
  final BBSubCategoryUsecase subCategoryUsecase;
  SubCategoryBloc(this.subCategoryUsecase) : super(const Initial()) {
    on<GetBBSubCategoryList>(_onGetBBSubCategoryList);
    on<ChangeActiveSubCategory>(_onChangeActiveSubCategory);
  }
  void _onGetBBSubCategoryList(
      GetBBSubCategoryList event, Emitter<SubCategoryState> emit) async {
    emit(const SubCategoriesLoading());
    final failureOrSubCategoryList = await subCategoryUsecase(event.category);
    failureOrSubCategoryList.fold((failure) {
      if (failure is NetworkFailure) {
        emit(SubCategoriesError(
            NetworkExceptions.getErrorMessage(failure.error)));
      }
    }, (subCategories) {
      emit(SubCategoriesLoaded(
          subCategories, subCategories.isNotEmpty ? subCategories[0] : null));
    });
  }

  _onChangeActiveSubCategory(
      ChangeActiveSubCategory event, Emitter<SubCategoryState> emit) async {
    final state = this.state;
    if (state is SubCategoriesLoaded) {
      emit(state.copyWith(selectedSubCategory: event.subCategory));
    }
  }
}
