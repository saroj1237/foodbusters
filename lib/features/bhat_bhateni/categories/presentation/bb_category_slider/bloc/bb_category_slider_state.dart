part of 'bb_category_slider_bloc.dart';

@freezed
class BbCategorySliderState with _$BbCategorySliderState {
  const factory BbCategorySliderState.initial() = Initial;
  const factory BbCategorySliderState.getSliderLoading() = GetSliderLoading;
  const factory BbCategorySliderState.getSliderSuccess(
      {required List<SliderCategory> sliderCategory}) = GetSliderSuccess;
  const factory BbCategorySliderState.getSliderFailure() = GetSliderFailure;
}
