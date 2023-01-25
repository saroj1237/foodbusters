// ignore_for_file: invalid_annotation_target

part of 'bag_bloc.dart';

@freezed
class BagState with _$BagState {
  const factory BagState.initial() = Initial;
  //get states
  const factory BagState.bagLoading() = BagLoading;
  const factory BagState.getBagItemsSuccess(
    @JsonKey(defaultValue: []) List<BagItem> itemList,
    BagItem? activeBagItem,
  ) = GetBagItemsSuccess;
  const factory BagState.getBagItemsFailure() = GetBagItemsFailure;
  // add states
  const factory BagState.addTobagLoading() = AddTobagLoading;
  const factory BagState.addTobagSuccess() = AddTobagSuccess;
  const factory BagState.addTobagFailure(
      {@Default("Something went wrong") String errorMsg}) = AddTobagFailure;
  // change quantity states
  // const factory BagState.changeQuantityLoading() = ChangeQuantityLoading;
}
