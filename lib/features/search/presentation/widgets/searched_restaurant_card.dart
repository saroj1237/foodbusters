import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/restaurant_detail_page.dart';
import 'package:go_router/go_router.dart';

class SearchedRestaurantCard extends StatelessWidget {
  const SearchedRestaurantCard({Key? key, required this.restaurant})
      : super(key: key);
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.restaurantDetailPage,
            extra: RestaurantDetailPageModel(restaurantId: restaurant.id));
      },
      child: Container(
        width: AppSize.s200,
        height: AppSize.s100,
        margin: const EdgeInsets.only(right: AppMargin.m16),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: ColorManager.lightGrey.withOpacity(0.5), width: 1.5),
            borderRadius: BorderRadius.circular(AppSize.s10)),
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(AppSize.s10)),
                    child: CustomCachedImage(
                      imageUrl: restaurant.images ?? "",
                      fit: BoxFit.cover,
                      width: AppSize.s200,
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        restaurant.name,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontSize: FontSize.s14, color: ColorManager.grey1),
                      ),
                      Text(
                        restaurant.address ?? '',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
          Positioned(
            right: AppSize.s20,
            top: AppSize.s50,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: ColorManager.lightGrey, width: AppSize.s2),
                  shape: BoxShape.circle),
              child: ClipOval(
                  child: CustomCachedImage(
                imageUrl: restaurant.images![0],
                fit: BoxFit.fill,
                width: AppSize.s40,
                height: AppSize.s40,
              )),
            ),
          )
        ]),
      ),
    );
  }
}
