part of 'bag_bloc.dart';

@freezed
class BagEvent with _$BagEvent {
  const factory BagEvent.started() = Started;
  const factory BagEvent.getBagItems({String? restaurantId}) = GetBagItems;
  const factory BagEvent.addItemTobag(
      AddTobagRequest request, String foodId, BagItem? bagItem) = AddItemTobag;

  /// remove the bag item (restaurant bag)
  const factory BagEvent.removeBagItem(String restaurantId) = RemoveBagItem;

  /// remove the single food item of specific bag item
  const factory BagEvent.removeFood(
      {required String foodId, required String restaurantId}) = RemoveFood;

  /// change the food quantity of specific restaurant while checkout
  const factory BagEvent.changeQuantity(
      String restaurantId, String foodId, int quantity) = ChangeQuantity;

  /// change the selected bag item for checkout
  const factory BagEvent.changeActiveBagItem(BagItem bagItem) =
      ChangeActiveBagItem;
}
