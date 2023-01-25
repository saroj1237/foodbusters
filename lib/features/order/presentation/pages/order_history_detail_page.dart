import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/copy_to_clipboard.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/order/presentation/bloc/cubit/order_history_cubit.dart';
import 'package:foodbusters/features/order/presentation/widgets/charges.dart';
import 'package:go_router/go_router.dart';

class OrderHistoryDetailPage extends StatefulWidget {
  const OrderHistoryDetailPage({Key? key, required this.orderId})
      : super(key: key);

  final String orderId;

  @override
  State<OrderHistoryDetailPage> createState() => _OrderHistoryDetailPageState();
}

class _OrderHistoryDetailPageState extends State<OrderHistoryDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<OrderHistoryCubit>().getOrderHistoryDetail(widget.orderId);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // context
        //     .read<BottomNavCubit>()
        //     .changeBottomNavIndex(2, BottomNavType.foodbusters);
        // context.read<OrderHistoryCubit>().getOrderHistory();
        // context.go(AppRoutes.landingPage);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Track order"),
        ),
        body: BlocBuilder<OrderHistoryCubit, OrderHistoryState>(
          builder: (context, state) {
            return state.maybeWhen(
              orderHistoryLoading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              orderHistoryLoaded: (list, detail) {
                return detail != null
                    ? SingleChildScrollView(
                        child: Container(
                          width: double.maxFinite,
                          padding: const EdgeInsets.all(AppPadding.p16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      copyToClipboard(context, detail.oid);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.copy,
                                          color: ColorManager.black,
                                        ),
                                        const SizedBox(width: AppSize.s5),
                                        customText(
                                            "Order ID: ${detail.oid}",
                                            ColorManager.black,
                                            16,
                                            FontWeight.w700),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSize.s16),
                              Row(
                                children: [
                                  customText(
                                      detail.createdDate,
                                      ColorManager.textGrey,
                                      16,
                                      FontWeight.w700),
                                  const Spacer(),
                                  customText(
                                      detail.paidStatus ? "Paid" : "Unpaid",
                                      detail.paidStatus
                                          ? ColorManager.success
                                          : ColorManager.textDark,
                                      12,
                                      FontWeight.w700),
                                  const SizedBox(width: AppSize.s24),
                                  customText(
                                      detail.orderStatus ?? "",
                                      ColorManager.bbPrimary,
                                      12,
                                      FontWeight.w700),
                                ],
                              ),

                              if (detail.paidStatus) ...{
                                ...[
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Divider(),
                                  ),
                                  if (detail.paymentOption?.toLowerCase() ==
                                      "esewa") ...{
                                    Row(
                                      children: [
                                        Image.asset(ImageAsset.esewaLogo),
                                        const SizedBox(width: AppSize.s8),
                                        customText(
                                            "eSewa",
                                            const Color(0xFF4E4E4E),
                                            16,
                                            FontWeight.w600),
                                      ],
                                    )
                                  } else if (detail.paymentOption
                                          ?.toLowerCase() ==
                                      "khalti") ...{
                                    const Text("Khalit"),
                                  } else if (detail.paymentOption
                                          ?.toLowerCase() ==
                                      "cod") ...{
                                    Row(
                                      children: [
                                        Image.asset(
                                          ImageAsset.codLogo,
                                          height: 30,
                                          width: 30,
                                        ),
                                        const SizedBox(width: AppSize.s8),
                                        customText(
                                            "Cash on delivery",
                                            const Color(0xFF4E4E4E),
                                            16,
                                            FontWeight.w600),
                                      ],
                                    )
                                  } else ...{
                                    const SizedBox.shrink()
                                  }
                                ]
                              },
                              // Text(
                              //   'Order Status',
                              //   style: Theme.of(context).textTheme.headline5,
                              // ),
                              // const SizedBox(height: AppSize.s20),
                              // Container(
                              //   height: 5,
                              //   width: double.infinity,
                              //   alignment: Alignment.center,
                              //   child: ListView(
                              //     physics: const NeverScrollableScrollPhysics(),
                              //     shrinkWrap: true,
                              //     padding: EdgeInsets.zero,
                              //     scrollDirection: Axis.horizontal,
                              //     children: [
                              //       for (int i = 0; i < 5; i++)
                              //         Container(
                              //           height: 5,
                              //           width: 50,
                              //           margin: const EdgeInsets.only(
                              //               right: AppMargin.m10),
                              //           decoration: BoxDecoration(
                              //               color: i == 0
                              //                   ? ColorManager.primary
                              //                   : ColorManager.lightGrey,
                              //               borderRadius:
                              //                   BorderRadius.circular(2.5)),
                              //         ),
                              //     ],
                              //   ),
                              // ),
                              // const SizedBox(height: AppSize.s20),
                              // Container(
                              //   height: AppSize.s40,
                              //   padding: const EdgeInsets.all(AppPadding.p8),
                              //   decoration: BoxDecoration(
                              //     color: ColorManager.black,
                              //     borderRadius:
                              //         BorderRadius.circular(AppSize.s20),
                              //   ),
                              //   child: Row(
                              //     mainAxisSize: MainAxisSize.min,
                              //     children: [
                              //       Icon(Icons.verified,
                              //           color: ColorManager.primary),
                              //       const SizedBox(width: AppSize.s8),
                              //       Text(
                              //         'Order Being Verified',
                              //         style: Theme.of(context)
                              //             .textTheme
                              //             .headline5
                              //             ?.copyWith(color: ColorManager.white),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              // const SizedBox(height: AppSize.s20),
                              // Text(
                              //   "Next: Order Verified",
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .headline5
                              //       ?.copyWith(color: ColorManager.grey),
                              // ),
                              const SizedBox(height: AppSize.s16),

                              Container(
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
                                    customText(
                                        detail.bagItem.restaurantName ?? '',
                                        ColorManager.white,
                                        20,
                                        FontWeight.w800),
                                    const SizedBox(height: AppSize.s8),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: ColorManager.white,
                                          size: 20,
                                        ),
                                        customText(
                                            detail.bagItem.restaurantAddress ??
                                                '',
                                            ColorManager.white,
                                            14,
                                            FontWeight.w500),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Stack(children: [
                                Positioned.fill(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: ColorManager.black,
                                            borderRadius:
                                                const BorderRadius.vertical(
                                                    bottom: Radius.circular(
                                                        AppSize.s10))))),
                                Container(
                                  width: double.maxFinite,
                                  padding: const EdgeInsets.all(AppPadding.p16),
                                  decoration: BoxDecoration(
                                      color: ColorManager.profileBg,
                                      borderRadius: const BorderRadius.vertical(
                                          top: Radius.circular(AppSize.s10),
                                          bottom:
                                              Radius.circular(AppSize.s10))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      for (BagFood food
                                          in detail.bagItem.foodList!)
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              food.foodName ?? '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeightManager
                                                              .bold),
                                            ),
                                            const SizedBox(height: AppSize.s10),
                                            Text(
                                                "Rs.${food.totalPrice}  Quantity: ${food.quantity}"),
                                            const SizedBox(height: AppSize.s10),
                                          ],
                                        ),
                                      const SizedBox(height: AppSize.s10),
                                      Text(
                                        detail.createdDate,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                                fontSize: 14,
                                                color: ColorManager.grey1),
                                      ),
                                      const SizedBox(height: AppSize.s10),
                                      Text(
                                        "Note: Let us know if there is other information about the order",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                                fontSize: 14,
                                                color: ColorManager.grey1),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                              const SizedBox(height: AppSize.s30),
                              ChargeItem(
                                  chargeType: 'Food Price',
                                  chargeAmount: detail.restPrice ?? 0),
                              // const SizedBox(height: AppSize.s20),

                              ChargeItem(
                                  chargeType: 'Delivery Charge',
                                  chargeAmount: detail.deliveryCharge),

                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Divider(),
                              ),
                              ChargeItem(
                                  chargeType: 'Grand Total',
                                  chargeAmount: detail.totalPrice!,
                                  bold: true),
                              const SizedBox(height: AppSize.s10),
                              SizedBox(
                                height: AppSize.s50,
                                width: double.infinity,
                                child: AppButton(
                                  label: !detail.paidStatus
                                      ? 'Pay Now'
                                      : "Go to Home",
                                  onPressed: () {
                                    if (!detail.paidStatus) {
                                      context.push(
                                          AppRoutes.paymentSelectionPage,
                                          extra: PlaceOrderSuccessRes(
                                            orderId: detail.orderId,
                                            oid: detail.oid,
                                            restPrice: detail.restPrice ?? 0,
                                            totalPrice: detail.totalPrice ?? 0,
                                            deliveryCharge:
                                                detail.deliveryCharge,
                                            isFoodbusters: true,
                                          ));
                                    } else {
                                      context.go(AppRoutes.landingPage);
                                      context
                                          .read<BottomNavCubit>()
                                          .changeBottomNavIndex(
                                              0, BottomNavType.foodbusters);
                                    }
                                  },
                                ),
                              ),

                              const SizedBox(height: AppSize.s100)
                            ],
                          ),
                        ),
                      )
                    : const Center(child: Text("Error occured"));
              },
              orElse: () {
                return Text(state.toString());
              },
            );
          },
        ),
      ),
    );
  }
}
