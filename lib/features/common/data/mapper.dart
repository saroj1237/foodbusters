import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/entities/resturant_entity.dart';

import '../../../core/extenstions/extenstions.dart';

extension RestaurantModelMapper on RestaurantCategory? {
  RestaurantCategory toDomain() {
    return RestaurantCategory(
      id: this?.id.orEmpty() ?? empty,
      createdDate: this?.createdDate?.orEmpty(),
      image: this?.image ?? '',
      name: this?.name?.orEmpty(),
    );
  }
}

extension BBCategoryMapper on BBCategory? {
  BBCategory toDomain() {
    return BBCategory(
      id: this?.id.orEmpty() ?? empty,
      name: this?.name.orEmpty() ?? empty,
      images: this?.images ?? this?.images,
      description: this?.description.orEmpty(),
      discount: this?.discount ?? 0.0,
    );
  }
}

extension BagItemMapper on BagItem? {
  BagItem toDomain() {
    return BagItem(
      restaurantId: this?.restaurantId.orEmpty() ?? empty,
      restaurantName: this?.restaurantName.orEmpty() ?? empty,
      restaurantImages: this?.restaurantImages ?? empty,
      restaurantAddress: this?.restaurantAddress ?? empty,
      totalPrice: this?.totalPrice ?? zero,
      foodList: this?.foodList.orEmptyList() ?? <BagFood>[],
    );
  }
}
