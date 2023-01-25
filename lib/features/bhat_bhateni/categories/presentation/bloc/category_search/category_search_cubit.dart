import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasources/bb_category_remote_datasource.dart';
import '../../../domain/entities/bb_category_entity.dart';

part 'category_search_cubit.freezed.dart';
part 'category_search_state.dart';

class CategorySearchCubit extends Cubit<CategorySearchState> {
  final BBCategoryRemoteDataSource remoteDataSource;
  CategorySearchCubit({required this.remoteDataSource})
      : super(const CategorySearchState.initial());
  void searchCategories(String query) async {
    try {
      emit(const CategorySearchLoading());
      final failureOrSuccess = await remoteDataSource.searchCategory(query);
      failureOrSuccess.fold((failure) {
        emit(const CategorySearchError("Error occured"));
      }, (categories) {
        emit(CategorySearchLoaded(categories));
      });
    } catch (e) {
      emit(const CategorySearchError("Error occured"));
    }
  }
}
