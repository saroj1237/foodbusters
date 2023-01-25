part of 'bb_deals_bloc.dart';

@freezed
class BbDealsState with _$BbDealsState {
  const factory BbDealsState.initial() = Initial;
  const factory BbDealsState.getBBDealsLoading() = GetBBDealsLoading;
  const factory BbDealsState.getBBDealsSuccess(
      {required List<Product> product}) = GetBBDealsSuccess;
  const factory BbDealsState.getBBDealsFailure() = GetBBDealsFailure;
}
