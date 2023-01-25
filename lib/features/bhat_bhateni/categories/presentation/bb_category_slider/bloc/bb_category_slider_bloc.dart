import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/usecases/base_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/usecases/bb_category_slider_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bb_category_slider_event.dart';
part 'bb_category_slider_state.dart';
part 'bb_category_slider_bloc.freezed.dart';

class BbCategorySliderBloc
    extends Bloc<BbCategorySliderEvent, BbCategorySliderState> {
  final BBCategorySliderUsecase usecase;

  BbCategorySliderBloc(this.usecase)
      : super(const BbCategorySliderState.initial()) {
    on<GetBBSlider>((event, emit) async {
      emit(const GetSliderLoading());
      final failureOrRestaurants = await usecase.call(NoParams());
      failureOrRestaurants.fold((failure) {
        emit(const GetSliderFailure());
      }, (slider) {
        emit(GetSliderSuccess(sliderCategory: slider));
      });
    });
  }
}
