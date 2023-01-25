part of 'deals_and_offer_cubit.dart';

@freezed
class DealsAndOfferState with _$DealsAndOfferState {
  const factory DealsAndOfferState.initial() = Initial;
  // deals and offer (for Home page) states
  const factory DealsAndOfferState.offerLoading() = OfferLoading;
  const factory DealsAndOfferState.offerFailure(String error) = OfferFailure;
  const factory DealsAndOfferState.offerLoaded(
      List<Food> offerAndDealsFoodList) = OfferLoaded;
}
