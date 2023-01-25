part of 'partner_rest_bloc.dart';

@freezed
class PartnerRestEvent with _$PartnerRestEvent {
  const factory PartnerRestEvent.getPartnerRestaurantList() =
      GetPartnerRestaurantList;
}
