part of 'partner_rest_bloc.dart';

@freezed
class PartnerRestState with _$PartnerRestState {
  const factory PartnerRestState.initial() = Initial;
  const factory PartnerRestState.loading() = Loading;
  const factory PartnerRestState.loaded(
      {required List<Restaurant> partnerRestaurants}) = Loaded;
  const factory PartnerRestState.error({
    required String error,
  }) = Error;
}
