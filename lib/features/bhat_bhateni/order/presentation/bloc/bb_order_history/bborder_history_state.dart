part of 'bborder_history_bloc.dart';

@freezed
class BborderHistoryState with _$BborderHistoryState {
  const factory BborderHistoryState.initial() = Initial;
  const factory BborderHistoryState.bbOrderHistoryLoading() =
      BbOrderHistoryLoading;
  const factory BborderHistoryState.bbOrderHistoryError(String error) =
      BbOrderHistoryError;
  const factory BborderHistoryState.bbOrderHistoryLoaded({
    List<BBOrderHistory>? histories,
    BBOrderHistoryDetail? histroyDetail,
  }) = BbOrderHistoryLoaded;
}
