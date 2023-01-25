import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/order/presentation/bloc/cubit/order_history_cubit.dart';
import 'package:foodbusters/features/order/presentation/widgets/order_list_page_appbar.dart';
import 'package:go_router/go_router.dart';

import '../../../common/widgets/app_button.dart';

class OrderListPage extends StatefulWidget {
  const OrderListPage({Key? key}) : super(key: key);

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  @override
  void initState() {
    context.read<OrderHistoryCubit>().getOrderHistory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: sl.get<GlobalKey<ScaffoldState>>(),
      backgroundColor: ColorManager.white,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, AppSize.s60),
        child: OrderListPageAppbar(),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<OrderHistoryCubit>().getOrderHistory();
        },
        child: BlocBuilder<OrderHistoryCubit, OrderHistoryState>(
          builder: (context, state) {
            return state.maybeWhen(
              orderHistoryLoading: () {
                return const Center(child: CircularProgressIndicator());
              },
              orderHistoryError: (error) {
                return Center(child: Text(error));
              },
              orderHistoryLoaded: (orderHistory, detail) {
                return orderHistory.orderHistoryItems.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.all(AppPadding.p16),
                        child: ListView.builder(
                            itemCount: orderHistory.orderHistoryItems.length,
                            itemBuilder: (context, index) {
                              final orderHistoryItem =
                                  orderHistory.orderHistoryItems[index];
                              return orderHistory.orderHistoryItems.isNotEmpty
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: ColorManager.lightGrey1,
                                        borderRadius: BorderRadius.circular(
                                          AppSize.s10,
                                        ),
                                      ),
                                      padding:
                                          const EdgeInsets.all(AppPadding.p16),
                                      margin: const EdgeInsets.only(
                                          bottom: AppSize.s16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                orderHistoryItem.createdDate,
                                                maxLines: 2,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline5
                                                    ?.copyWith(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            ColorManager.grey3),
                                              ),
                                              const Spacer(),
                                              customText(
                                                  orderHistoryItem.paidStatus
                                                      ? "Paid"
                                                      : "Unpaid",
                                                  orderHistoryItem.paidStatus
                                                      ? ColorManager.success
                                                      : ColorManager.textDark,
                                                  12,
                                                  FontWeight.w700),
                                              const SizedBox(
                                                  width: AppSize.s24),
                                              customText(
                                                  orderHistoryItem
                                                          .orderStatus ??
                                                      "Unknown",
                                                  orderHistoryItem
                                                              .orderStatus ==
                                                          "Pending"
                                                      ? ColorManager.bbPrimary
                                                      : orderHistoryItem
                                                                  .orderStatus ==
                                                              "Cancelled"
                                                          ? ColorManager.error
                                                          : orderHistoryItem
                                                                      .orderStatus ==
                                                                  "Confirmed"
                                                              ? ColorManager
                                                                  .success
                                                              : ColorManager
                                                                  .textDark,
                                                  12,
                                                  FontWeight.w700),
                                            ],
                                          ),
                                          const SizedBox(height: AppSize.s10),
                                          Text(
                                            orderHistoryItem
                                                    .bagItem.restaurantName ??
                                                '',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2
                                                ?.copyWith(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                          ),
                                          const SizedBox(height: AppSize.s10),
                                          Text(
                                              orderHistoryItem
                                                      .bagItem.restaurantName ??
                                                  '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5
                                                  ?.copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                          const SizedBox(height: AppSize.s10),
                                          Text(
                                            orderHistoryItem.bagItem.foodList!
                                                        .length >
                                                    1
                                                ? "Rs. ${orderHistoryItem.totalPrice} (${orderHistoryItem.bagItem.foodList?.length} Items)"
                                                : "Rs. ${orderHistoryItem.totalPrice} (${orderHistoryItem.bagItem.foodList?.length} Item)",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5
                                                ?.copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 16.0),
                                            child: Divider(),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    if (orderHistoryItem
                                                            .paymentOption !=
                                                        null) ...[
                                                      Image.asset(
                                                        orderHistoryItem
                                                                    .paymentOption!
                                                                    .toLowerCase() ==
                                                                "esewa"
                                                            ? ImageAsset
                                                                .esewaLogo
                                                            : orderHistoryItem
                                                                        .paymentOption!
                                                                        .toLowerCase() ==
                                                                    "khalti"
                                                                ? ImageAsset
                                                                    .khaltiLogo
                                                                : orderHistoryItem.paymentOption!.toLowerCase() ==
                                                                        "cod"
                                                                    ? ImageAsset
                                                                        .codLogo
                                                                    : ImageAsset
                                                                        .codLogo,
                                                        height: 30,
                                                        width: 30,
                                                      ),
                                                      const SizedBox(
                                                          width: AppSize.s16),
                                                      Text(orderHistoryItem
                                                          .paymentOption!),
                                                    ]
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: AppSize.s10),
                                          SizedBox(
                                            height: AppSize.s50,
                                            width: double.infinity,
                                            child: AppButton(
                                              onPressed: () {
                                                context.push(
                                                    AppRoutes
                                                        .orderHistoryDetailPage,
                                                    extra:
                                                        orderHistoryItem.oid);
                                                // if (orderHistoryItem
                                                //         .paymentOption ==
                                                //     null) {
                                                //   // go to payment selection page
                                                //   context.push(
                                                //     AppRoutes
                                                //         .paymentSelectionPage,
                                                //     extra: PlaceOrderSuccessRes(
                                                //         orderId:
                                                //             orderHistoryItem
                                                //                 .orderId,
                                                //         oid:
                                                //             orderHistoryItem
                                                //                 .oid,
                                                //         restPrice:
                                                //             orderHistoryItem
                                                //                     .restPrice ??
                                                //                 0,
                                                //         totalPrice:
                                                //             orderHistoryItem
                                                //                 .totalPrice!,
                                                //         deliveryCharge:
                                                //             orderHistoryItem
                                                //                 .deliveryCharge,
                                                //         isFoodbusters:
                                                //             true),
                                                //   );
                                                // } else {
                                                //   // go to track order page
                                                //   context.push(
                                                //       AppRoutes
                                                //           .orderHistoryDetailPage,
                                                //       extra:
                                                //           orderHistoryItem
                                                //               .oid);
                                                // }
                                              },
                                              // label: orderHistoryItem
                                              //             .paymentOption ==
                                              //         null
                                              //     ? "Track Order"
                                              //     : "View Details",
                                              label: "View Details",
                                              bgColor: ColorManager.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Center(
                                            child: SvgPicture.asset(
                                                ImageAsset.emptyItems)),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        customText(
                                            "No orders found",
                                            ColorManager.textDark,
                                            20,
                                            FontWeight.w800),
                                      ],
                                    );
                            }))
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: SvgPicture.asset(ImageAsset.emptyItems)),
                          const SizedBox(
                            height: 16,
                          ),
                          customText("No orders found", ColorManager.textDark,
                              20, FontWeight.w800),
                        ],
                      );
              },
              orElse: () {
                return const SizedBox.shrink();
              },
            );
          },
        ),
      ),
    );
  }
}
