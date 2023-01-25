part of 'search_google_place_cubit.dart';

@freezed
class SearchGooglePlaceState with _$SearchGooglePlaceState {
  const factory SearchGooglePlaceState.initial() = SearchGooglePlaceInitial;
  const factory SearchGooglePlaceState.googleSearchLoading() =
      GoogleSearchLoading;
  const factory SearchGooglePlaceState.googleSearchFailure(String error) =
      GoogleSearchFailure;
  const factory SearchGooglePlaceState.googleSearchLoaded({
    required List<SuggestedGoogleAddressModel> suggestedAddresses,
  }) = GoogleSearchLoaded;
}

class SuggestedGoogleAddressModel {
  final String address;
  final String addressId;

  SuggestedGoogleAddressModel(this.address, this.addressId);
}
