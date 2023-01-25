part of 'offer_slider_cubit.dart';

@freezed
class OfferSliderState with _$OfferSliderState {
  const factory OfferSliderState.initial() = Initial;
  const factory OfferSliderState.offerLoading() = OfferLoading;
  const factory OfferSliderState.offerError() = OfferError;
  const factory OfferSliderState.offerLoaded(List<String> offerImages) =
      OfferLoaded;
}
