import 'package:flutter/material.dart';
import 'package:foodbusters/core/helpers/mathmatical_operations.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/restaurant_detail_page.dart';
import 'package:go_router/go_router.dart';

class DealsAndOfferWidget extends StatelessWidget {
  const DealsAndOfferWidget({
    Key? key,
    required this.food,
  }) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              if (food.restaurantId == null) return;
              context.push(AppRoutes.restaurantDetailPage,
                  extra: RestaurantDetailPageModel(
                    restaurantId: food.restaurantId!,
                    initialTabIndex: 1,
                    offerFood: food,
                  ));
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    CustomCachedImage(
                      imageUrl:
                          food.foodImage != null && food.foodImage!.isNotEmpty
                              ? food.foodImage![0]
                              : "",
                      width: MediaQuery.of(context).size.width / 3,
                      height: AppSize.s150,
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                        child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            ColorManager.black,
                            ColorManager.black.withOpacity(0.2),
                            ColorManager.black.withOpacity(0.1),
                            ColorManager.transparent
                          ],
                        ),
                      ),
                    )),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      // alignmet: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: const EdgeInsets.all(AppPadding.p8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextOverflow(
                                (food.price?.toDouble() !=
                                        food.discountedPrice?.toDouble())
                                    ? "${calculatePercentage(food.price!.toDouble(), food.discountedPrice!.toDouble()).toStringAsFixed(2)}% off"
                                    : "",
                                ColorManager.white,
                                18,
                                FontWeight.w900,
                                null),
                            customTextOverflow(
                                "Rs.${food.price}",
                                ColorManager.white,
                                14,
                                FontWeight.w500,
                                TextOverflow.ellipsis)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            padding: const EdgeInsets.only(top: AppPadding.p4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextOverflow(food.name ?? '', ColorManager.black, 14,
                    FontWeight.w700, TextOverflow.ellipsis),
                customTextOverflow(
                    // "Rs.${food.price}",
                    food.restaurantName ?? '',
                    ColorManager.categorySliderTextColor,
                    14,
                    FontWeight.w600,
                    TextOverflow.ellipsis)
              ],
            ),
          )
        ],
      ),
    );
  }
}
