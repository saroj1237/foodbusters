import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchedFoodCard extends StatelessWidget {
  const SearchedFoodCard({Key? key, required this.food}) : super(key: key);

  final Food food;

  @override
  Widget build(BuildContext context) {
    return BlocListener<BagBloc, BagState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            addTobagSuccess: () {
              showSnackBar(context,
                  message: "Added to cart",
                  behavior: SnackBarBehavior.floating,
                  actionLabel: "Go to cart", onPressed: () {
                context.push(AppRoutes.bagPage);
              });
            });
      },
      child: StatefulBuilder(
        builder: (context, setState) => Container(
          padding: const EdgeInsets.symmetric(vertical: AppSize.s16),
          margin: const EdgeInsets.only(bottom: AppSize.s20),
          child: InkWell(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
              // context.push(
              //   AppRoutes.restaurantDetailPage,
              //   extra:
              //       RestaurantDetailPageModel(restaurantId: food.restaurantId ?? ''),
              // );
              showFoodModalSheet(context, food, setState);
            },
            splashColor: ColorManager.profileBg.withOpacity(0.5),
            overlayColor:
                MaterialStateProperty.all<Color>(ColorManager.profileBg),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CustomCachedImage(
                    imageUrl:
                        food.foodImage != null && food.foodImage!.isNotEmpty
                            ? food.foodImage![0]
                            : '',
                    height: AppSize.s60,
                    width: AppSize.s60,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: AppSize.s10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name ?? '',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: ColorManager.textDark),
                      ),
                      const SizedBox(height: AppSize.s4),
                      Row(
                        children: [
                          Flexible(
                            child: customText(
                                food.restaurantName ?? 'Not Available',
                                ColorManager.grey,
                                14,
                                FontWeight.w500),
                          ),
                          const SizedBox(width: AppSize.s8),
                          Icon(
                            Icons.circle,
                            size: AppSize.s8,
                            color: ColorManager.grey3,
                          ),
                          const SizedBox(width: AppSize.s4),
                          customText("Rs. ${food.discountedPrice}",
                              ColorManager.textDark, 14, FontWeight.w500),
                          const SizedBox(width: AppSize.s4),
                          if (food.discountedPrice != food.price)
                            Text(
                              "Rs. ${food.price}",
                              style: GoogleFonts.lato(
                                color: ColorManager.textGrey,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                        ],
                      ),
                      const SizedBox(height: AppSize.s4),
                      customText("(approx: 2.5 km away)", ColorManager.grey, 14,
                          FontWeight.w500),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
