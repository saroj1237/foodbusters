import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:foodbusters/core/helpers/mathmatical_operations.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/restaurant_detail_page.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/app_dialogs.dart';

class FeaturedFoodCard extends StatefulWidget {
  const FeaturedFoodCard({
    Key? key,
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.restaurantId,
    required this.restaurantName,
    required this.detail,
    required this.price,
    required this.discountedPrice,
  }) : super(key: key);
  final String id;
  final String name;
  final String detail;
  final String imageUrl;
  final String restaurantId;
  final String restaurantName;
  final num price;
  final num discountedPrice;

  @override
  State<FeaturedFoodCard> createState() => _FeaturedFoodCardState();
}

class _FeaturedFoodCardState extends State<FeaturedFoodCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              // // context.push(AppRoutes.restaurantDetailPage, extra: restaurant.id);
              // debugPrint(food.restaurantId);

              // context.push(AppRoutes.restaurantDetailPage,
              //     extra: RestaurantDetailPageModel(
              //         restaurantId: restaurantId, initialTabIndex: 0));
              showFoodModalSheet(
                  context,
                  Food(
                      id: widget.id,
                      offer: false,
                      foodImage: [widget.imageUrl],
                      price: widget.price,
                      discountedPrice: widget.discountedPrice,
                      name: widget.name,
                      detail: widget.detail),
                  setState);
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    CustomCachedImage(
                      imageUrl: widget.imageUrl,
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
                        padding: const EdgeInsets.all(AppPadding.p8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (widget.discountedPrice.toDouble() !=
                                widget.price.toDouble()) ...{
                              customTextOverflow(
                                  " ${calculatePercentage(widget.price.toDouble(), widget.discountedPrice.toDouble()).toStringAsFixed(2)}% off",
                                  ColorManager.white,
                                  18,
                                  FontWeight.w900,
                                  null),
                            },
                            // Text(
                            //   "${food.discount}% off",
                            //   style: Theme.of(context)
                            //       .textTheme
                            //       .headlineSmall
                            //       ?.copyWith(
                            //         color: ColorManager.white,
                            //         fontSize: 20,
                            //         fontWeight: FontWeightManager.bold,
                            //       ),
                            // ),
                            customText(
                                "Rs. ${widget.price}",
                                ColorManager.white,
                                FontSize.s14,
                                FontWeight.w500),
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
                customTextOverflow(widget.name, ColorManager.textDark, 14,
                    FontWeight.w700, TextOverflow.ellipsis),
                customTextOverflow(widget.restaurantName, ColorManager.textGrey,
                    14, FontWeight.w600, TextOverflow.ellipsis)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturedFoodCategoryCard extends StatefulWidget {
  const FeaturedFoodCategoryCard(
      {Key? key,
      required this.id,
      required this.name,
      required this.imageUrl,
      required this.restaurantId,
      required this.restaurantName,
      required this.restaurantAddress})
      : super(key: key);
  final String id;
  final String name;
  final String imageUrl;
  final dynamic restaurantId;
  final String restaurantName;
  final String restaurantAddress;

  @override
  State<FeaturedFoodCategoryCard> createState() =>
      _FeaturedFoodCategoryCardState();
}

class _FeaturedFoodCategoryCardState extends State<FeaturedFoodCategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              // // context.push(AppRoutes.restaurantDetailPage, extra: restaurant.id);
              // debugPrint(food.restaurantId);

              context.push(AppRoutes.restaurantDetailPage,
                  extra: RestaurantDetailPageModel(
                      restaurantId: widget.restaurantId.toString(),
                      initialTabIndex: 0));
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    CustomCachedImage(
                      imageUrl: widget.imageUrl,
                      width: MediaQuery.of(context).size.width / 3,
                      height: AppSize.s150,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSize.s10),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            padding: const EdgeInsets.only(top: AppPadding.p4),
            child: customTextOverflow(widget.name, ColorManager.textDark, 14,
                FontWeight.w700, TextOverflow.ellipsis),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            padding: const EdgeInsets.only(top: AppPadding.p4),
            child: customTextOverflow(
                widget.restaurantName,
                ColorManager.textGrey,
                14,
                FontWeight.w600,
                TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }
}
