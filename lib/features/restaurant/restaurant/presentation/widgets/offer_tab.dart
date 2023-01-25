import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/mathmatical_operations.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_offer/restaurant_offer_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/widgets/restaurant_menu_loading_widget.dart';
import 'package:go_router/go_router.dart';

class OfferTab extends StatefulWidget {
  const OfferTab({Key? key, required this.restaurantId}) : super(key: key);
  final String restaurantId;
  @override
  State<OfferTab> createState() => _OfferTabState();
}

class _OfferTabState extends State<OfferTab> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantOfferCubit, RestaurantOfferState>(
      builder: (context, state) {
        return state.maybeWhen(
          restaurantOfferLoading: () {
            return const Center(
              child: RestaurantMenuLoadingWidget(),
            );
          },
          restaurantOfferFailure: (error) {
            return Center(
              child: Text(error),
            );
          },
          restaurantOfferLoaded: (foodList) {
            List<Food> restOffers = [];
            for (Food f in foodList) {
              if (f.restaurantId == widget.restaurantId) {
                restOffers.add(f);
              }
            }
            return Stack(
              children: [
                RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<RestaurantOfferCubit>()
                        .getRestaurantOffers(widget.restaurantId);
                  },
                  child: restOffers.isNotEmpty
                      ? ListView.separated(
                          itemCount: restOffers.length,
                          itemBuilder: (context, index) {
                            final food = restOffers[index];

                            return GestureDetector(
                              onTap: () {
                                showFoodModalSheet(context, food, setState);
                              },
                              child: Column(
                                children: [
                                  Container(
                                    color: ColorManager.white,
                                    padding: const EdgeInsets.only(
                                        top: AppPadding.p16,
                                        left: AppPadding.p16,
                                        right: AppPadding.p16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                  height: AppSize.s8),
                                              Text(
                                                food.name ?? '',
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1
                                                    ?.copyWith(
                                                      fontSize: 16,
                                                    ),
                                              ),
                                              const SizedBox(
                                                  height: AppSize.s8),
                                              customText(
                                                  food.detail ?? "Per Price",
                                                  ColorManager.grey2,
                                                  12,
                                                  FontWeight.w500),
                                              const SizedBox(
                                                  height: AppSize.s8),
                                              Row(children: [
                                                Text(
                                                  "Rs. ${food.discountedPrice}",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline1
                                                      ?.copyWith(
                                                          fontSize: 16.0,
                                                          color: ColorManager
                                                              .textDark),
                                                ),
                                                const SizedBox(
                                                  width: AppSize.s8,
                                                ),
                                                Text(
                                                  (food.discount! > 0)
                                                      ? "Rs. ${food.price}"
                                                      : "",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .subtitle1
                                                      ?.copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          color: ColorManager
                                                              .grey2),
                                                ),
                                              ]),
                                              const SizedBox(
                                                  height: AppSize.s8),
                                              Text(
                                                (food.price !=
                                                        food.discountedPrice)
                                                    ? " ${calculatePercentage(food.price!.toDouble(), food.discountedPrice!.toDouble()).toStringAsFixed(2)} % Off"
                                                    : "",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1
                                                    ?.copyWith(
                                                        color: ColorManager
                                                            .discountPercentText),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      AppSize.s10),
                                              child: SizedBox(
                                                  height: AppSize.s90,
                                                  width: AppSize.s130,
                                                  child: (food.foodImage !=
                                                              null &&
                                                          food.foodImage!
                                                              .isNotEmpty)
                                                      ? CustomCachedImage(
                                                          imageUrl: food
                                                              .foodImage![0],
                                                          fit: BoxFit.cover,
                                                        )
                                                      // : const CustomCachedImage(
                                                      //     imageUrl: "",
                                                      //     fit: BoxFit.cover,
                                                      //   )
                                                      : Container()),
                                            ),
                                            Transform.translate(
                                              offset: const Offset(0, -20),
                                              child: StatefulBuilder(
                                                builder: (context, setState) =>
                                                    GestureDetector(
                                                  onTap: () {
                                                    final authBloc = context
                                                        .read<AuthCubit>();
                                                    if (authBloc.state
                                                        is Authenticated) {
                                                      AddTobagRequest
                                                          requestModel =
                                                          const AddTobagRequest(
                                                              quantity: 1);
                                                      context
                                                          .read<BagBloc>()
                                                          .add(AddItemTobag(
                                                              requestModel,
                                                              food.id,
                                                              null));
                                                    } else {
                                                      context.push(
                                                          AppRoutes.loginPage);
                                                    }
                                                  },
                                                  child: Container(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal:
                                                              AppPadding.p14,
                                                          vertical:
                                                              AppPadding.p10),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            ColorManager.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    AppSize
                                                                        .s26),
                                                        border: Border.all(
                                                          color: ColorManager
                                                              .lightGrey,
                                                        ),
                                                      ),
                                                      child:
                                                          const Text("+ ADD")),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.0, right: 16.0),
                                    child: Divider(
                                      height: 16,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: AppSize.s12,
                            );
                          },
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child:
                                    SvgPicture.asset(ImageAsset.emptyOffers)),
                            const SizedBox(
                              height: AppSize.s10,
                            ),
                            customText("Offers unavailable",
                                ColorManager.textDark, 24, FontWeight.w800),
                          ],
                        ),
                ),
              ],
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
