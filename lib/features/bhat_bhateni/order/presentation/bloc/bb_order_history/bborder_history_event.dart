part of 'bborder_history_bloc.dart';

@freezed
class BborderHistoryEvent with _$BborderHistoryEvent {
  const factory BborderHistoryEvent.getBbOrderHistories() = GetBbOrderHistories;
  const factory BborderHistoryEvent.getBbOrderHistoryDetails(
      BBOrderHistory orderHistory) = GetBbOrderHistoryDetails;
}
