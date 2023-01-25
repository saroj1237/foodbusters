import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/restaurant_detail_page.dart';
import 'package:go_router/go_router.dart';

class BagItemDetailPage extends StatelessWidget {
  const BagItemDetailPage({Key? key, required this.bagItem}) : super(key: key);
  final BagItem bagItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Bag Detail'),
            centerTitle: true,
            leading: null,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.only(bottom: AppSize.s100),
            child: BlocBuilder<BagBloc, BagState>(
              builder: (context, state) {
                return state.maybeWhen(
                  getBagItemsSuccess: (list, activeItem) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p16),
                        child: Column(
                          children: [
                            ResturantItem(
                              bagItem: activeItem!,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                );
              },
            ),
          ),
          bottomSheet: BottomSheet(
            elevation: 10,
            builder: (context) => BlocBuilder<BagBloc, BagState>(
              builder: (context, state) {
                return state.maybeWhen(orElse: () {
                  return const SizedBox.shrink();
                }, getBagItemsSuccess: (bagItems, activeItem) {
                  return Container(
                      color: ColorManager.white,
                      padding: const EdgeInsets.all(AppPadding.p16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customText(
                              "Rs. ${activeItem?.totalPrice.toStringAsFixed(2)}",
                              ColorManager.textDark,
                              16.0,
                              FontWeight.w800),
                          SizedBox(
                            width: AppSize.s150,
                            height: AppSize.s50,
                            child: AppButton(
                                label: "Proceed",
                                labelChild: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    customText("Proceed", ColorManager.textDark,
                                        16.0, FontWeight.w800),
                                    const SizedBox(width: AppSize.s8),
                                    Icon(
                                      Icons.arrow_forward_rounded,
                                      color: ColorManager.black,
                                      size: 18,
                                    )
                                  ],
                                ),
                                onPressed: () {
                                  context.push(AppRoutes.checkoutPage,
                                      extra: activeItem);
                                }),
                          )
                        ],
                      ));
                });
              },
            ),
            onClosing: () {},
          ),
        ),
      ),
    );
  }
}

class ResturantItem extends StatelessWidget {
  const ResturantItem({
    Key? key,
    required this.bagItem,
  }) : super(key: key);
  final BagItem bagItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.replace(AppRoutes.restaurantDetailPage,
                extra: RestaurantDetailPageModel(
                    restaurantId: bagItem.restaurantId));
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(AppPadding.p16),
            decoration: BoxDecoration(
                color: ColorManager.black,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppSize.s10),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bagItem.restaurantName ?? '',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: ColorManager.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                ),
                const SizedBox(height: AppSize.s8),
                Text(
                  bagItem.restaurantAddress ?? "Kathmandu",
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: ColorManager.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        Stack(children: [
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
                color: ColorManager.black,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(AppSize.s10),
                )),
          )),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(AppPadding.p16),
            decoration: BoxDecoration(
                color: ColorManager.profileBg,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(AppSize.s10),
                  top: Radius.circular(AppSize.s10),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (BagFood food in bagItem.foodList!)
                  Item(
                    bagFood: food,
                    showRemove: bagItem.foodList!.length > 1 ? true : false,
                    restaurantId: bagItem.restaurantId,
                  ),
                const SizedBox(height: AppSize.s10),
                GestureDetector(
                  onTap: () {
                    context.replace(AppRoutes.restaurantDetailPage,
                        extra: RestaurantDetailPageModel(
                            restaurantId: bagItem.restaurantId));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorManager.grey),
                      borderRadius: BorderRadius.circular(AppSize.s10),
                    ),
                    alignment: Alignment.center,
                    height: AppSize.s50,
                    width: double.infinity,
                    child: Text(
                      "+    Add more items",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                )
              ],
            ),
          ),
        ])
      ],
    );
  }
}

class Item extends StatefulWidget {
  const Item({
    Key? key,
    required this.bagFood,
    required this.showRemove,
    required this.restaurantId,
  }) : super(key: key);

  final BagFood bagFood;
  final bool showRemove;
  final String restaurantId;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  Timer? _debounce;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customText(
          widget.bagFood.foodName!,
          ColorManager.textDark,
          16,
          FontWeight.w700,
        ),
        const SizedBox(height: AppSize.s10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText(
              "Rs.${widget.bagFood.totalPrice}",
              ColorManager.textDark,
              14,
              FontWeight.w700,
            ),
          ],
        ),
        Row(
          children: [
            widget.showRemove
                ? TextButton(
                    onPressed: () {
                      showConfirmDialog(context,
                          title: "Delete item?",
                          desctiption: "Want to remove this food ?",
                          onConfirm: () {
                        context.read<BagBloc>().add(
                              RemoveFood(
                                  foodId: widget.bagFood.foodId,
                                  restaurantId: widget.restaurantId),
                            );
                      });
                    },
                    child: Text("X Remove",
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: ColorManager.error,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            )),
                  )
                : const SizedBox.shrink(),
            const Spacer(),
            // icon for decreasing the food item quantity
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (_debounce?.isActive ?? false) {
                        _debounce?.cancel();
                      }
                      _debounce = Timer(const Duration(milliseconds: 500), () {
                        if (widget.bagFood.quantity <= 1) return;
                        context.read<BagBloc>().add(
                              ChangeQuantity(
                                widget.restaurantId,
                                widget.bagFood.foodId,
                                -1,
                              ),
                            );
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: ColorManager.profileBg,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.remove,
                        size: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "${widget.bagFood.quantity}",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  // icon for increasing the food item quantity
                  GestureDetector(
                    onTap: () {
                      if (_debounce?.isActive ?? false) {
                        _debounce?.cancel();
                      }
                      _debounce = Timer(const Duration(milliseconds: 500), () {
                        context.read<BagBloc>().add(
                              ChangeQuantity(
                                widget.restaurantId,
                                widget.bagFood.foodId,
                                1,
                              ),
                            );
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: ColorManager.black,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.add,
                        size: 14,
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSize.s10),
      ],
    );
  }
}
