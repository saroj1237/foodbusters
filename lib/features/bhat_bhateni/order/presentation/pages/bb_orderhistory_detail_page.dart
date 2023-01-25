import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/bloc/bb_order_history/bborder_history_bloc.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/order/presentation/widgets/charges.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/bb_order_entity.dart';

class BBOrderHistoryDetailPage extends StatefulWidget {
  const BBOrderHistoryDetailPage({Key? key, required this.orderHistory})
      : super(key: key);
  final BBOrderHistory orderHistory;

  @override
  State<BBOrderHistoryDetailPage> createState() =>
      _BBOrderHistoryDetailPageState();
}

class _BBOrderHistoryDetailPageState extends State<BBOrderHistoryDetailPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<BborderHistoryBloc>()
        .add(GetBbOrderHistoryDetails(widget.orderHistory));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: ColorManager.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: ColorManager.bbPrimary,
        title: Text(
          "Order Details",
          style: TextStyle(color: ColorManager.white),
        ),
      ),
      body: BlocBuilder<BborderHistoryBloc, BborderHistoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            bbOrderHistoryLoaded: (list, detail) {
              return detail != null
                  ? SingleChildScrollView(
                      child: Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.all(AppPadding.p16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
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
                            // const SizedBox(height: AppSize.s20),

                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
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
                                customText(detail.createdDate,
                                    ColorManager.textGrey, 16, FontWeight.w700),
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

                            if (true) ...{
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
                                  const SizedBox.shrink(),
                                }
                              ]
                            },
                            const SizedBox(height: AppSize.s16),
                            Container(
                              width: double.maxFinite,
                              padding: const EdgeInsets.all(AppPadding.p16),
                              decoration: BoxDecoration(
                                  color: ColorManager.profileBg,
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(AppSize.s10),
                                      bottom: Radius.circular(AppSize.s10))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  for (CartItem product
                                      in detail.cartResponse.items!)
                                    ListTile(
                                      dense: true,
                                      contentPadding: EdgeInsets.zero,
                                      leading: CustomCachedImage(
                                        imageUrl:
                                            product.productImage?[0] ?? '',
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.cover,
                                      ),
                                      title: customText(
                                          product.name,
                                          ColorManager.textDark,
                                          14,
                                          FontWeight.w700),
                                      subtitle: Row(
                                        children: [
                                          customText(
                                              "Rs. ${product.unitPrice}  ",
                                              ColorManager.textGrey,
                                              12,
                                              FontWeight.w600),
                                          const Icon(Icons.circle, size: 8),
                                          customText(
                                              "  ${product.quantity} Items",
                                              ColorManager.textGrey,
                                              12,
                                              FontWeight.w600),
                                        ],
                                      ),
                                    ),
                                  // Column(
                                  //   crossAxisAlignment:
                                  //       CrossAxisAlignment.start,
                                  //   children: [
                                  //     Text(
                                  //       product.name,
                                  //       style: Theme.of(context)
                                  //           .textTheme
                                  //           .headline5
                                  //           ?.copyWith(
                                  //               fontWeight:
                                  //                   FontWeightManager.bold),
                                  //     ),
                                  //     const SizedBox(height: AppSize.s10),
                                  //     Text(
                                  //         "Rs.${product.totalPrice}  Quantity: ${product.quantity}"),
                                  //     const SizedBox(height: AppSize.s10),
                                  //   ],
                                  // ),
                                ],
                              ),
                            ),
                            const SizedBox(height: AppSize.s30),
                            ChargeItem(
                                chargeType: 'Product Price',
                                chargeAmount:
                                    detail.cartResponse.totalPrice ?? 0),
                            // const SizedBox(height: AppSize.s20),

                            ChargeItem(
                                chargeType: 'Delivery Charge',
                                chargeAmount: detail.deliveryCharge),

                            const Divider(),
                            ChargeItem(
                                chargeType: 'Grand Total',
                                chargeAmount: detail.totalPrice,
                                bold: true),
                            const SizedBox(height: AppSize.s10),
                            SizedBox(
                              height: AppSize.s50,
                              width: double.infinity,
                              child: AppButton(
                                onPressed: () {
                                  if (detail.paymentOption == null) {
                                    context.push(AppRoutes.paymentSelectionPage,
                                        extra: PlaceOrderSuccessRes(
                                          orderId: detail.orderId,
                                          oid: detail.oid,
                                          restPrice: detail.bbsmPrice,
                                          totalPrice: detail.totalPrice,
                                          deliveryCharge: detail.deliveryCharge,
                                          isFoodbusters: false,
                                        ));
                                  } else {
                                    context.go(AppRoutes.bbLandingPage);
                                    context
                                        .read<BottomNavCubit>()
                                        .changeBottomNavIndex(
                                            0, BottomNavType.bhatBhateni);
                                  }
                                },
                                label: detail.paymentOption == null
                                    ? 'Pay Now'
                                    : "Go to Home",
                                bgColor: ColorManager.bbPrimary,
                                labelColor: ColorManager.white,
                              ),
                            ),

                            const SizedBox(height: AppSize.s100)
                          ],
                        ),
                      ),
                    )
                  : const SizedBox.shrink();
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
