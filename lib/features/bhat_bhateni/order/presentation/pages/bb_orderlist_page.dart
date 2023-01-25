import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/authentication/login/presentation/pages/login_page.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/bloc/bb_order_history/bborder_history_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/widgets/app_button.dart';

class BBOrderListPage extends StatefulWidget {
  const BBOrderListPage({Key? key}) : super(key: key);

  @override
  State<BBOrderListPage> createState() => _BBOrderListPageState();
}

class _BBOrderListPageState extends State<BBOrderListPage> {
  @override
  void initState() {
    super.initState();
    context.read<BborderHistoryBloc>().add(const GetBbOrderHistories());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is Authenticated) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Order History"),
              backgroundColor: ColorManager.bbPrimary,
              titleTextStyle:
                  Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                        color: ColorManager.white,
                      ),
              leading: const SizedBox.shrink(),
            ),
            body: Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: BlocBuilder<BborderHistoryBloc, BborderHistoryState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    bbOrderHistoryLoading: () {
                      return const Center(child: CircularProgressIndicator());
                    },
                    bbOrderHistoryError: (error) {
                      return Center(child: Text(error));
                    },
                    bbOrderHistoryLoaded: (histories, detail) {
                      return histories != null && histories.isNotEmpty
                          ? ListView.builder(
                              itemCount: histories.length,
                              itemBuilder: (context, index) {
                                final orderHistoryItem = histories[index];
                                return Container(
                                  decoration: BoxDecoration(
                                    color: ColorManager.lightGrey1,
                                    borderRadius: BorderRadius.circular(
                                      AppSize.s10,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(AppPadding.p16),
                                  margin: const EdgeInsets.only(
                                      bottom: AppSize.s16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            orderHistoryItem.createdDate,
                                            maxLines: 2,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5
                                                ?.copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: ColorManager.grey3),
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
                                          const SizedBox(width: AppSize.s24),
                                          customText(
                                              orderHistoryItem.orderStatus ??
                                                  "Unknown",
                                              orderHistoryItem.orderStatus ==
                                                      "Pending"
                                                  ? ColorManager.bbPrimary
                                                  : orderHistoryItem
                                                              .orderStatus ==
                                                          "Cancelled"
                                                      ? ColorManager.error
                                                      : orderHistoryItem
                                                                  .orderStatus ==
                                                              "Confirmed"
                                                          ? ColorManager.success
                                                          : ColorManager
                                                              .textDark,
                                              12,
                                              FontWeight.w700),
                                        ],
                                      ),
                                      const SizedBox(height: AppSize.s10),
                                      customText(
                                          "Order ID: ${orderHistoryItem.oid}",
                                          ColorManager.textDark,
                                          16,
                                          FontWeight.w700),
                                      const SizedBox(height: AppSize.s10),
                                      Text(
                                        "Rs. ${orderHistoryItem.totalPrice}",
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
                                                        ? ImageAsset.esewaLogo
                                                        : orderHistoryItem
                                                                    .paymentOption!
                                                                    .toLowerCase() ==
                                                                "khalti"
                                                            ? ImageAsset
                                                                .khaltiLogo
                                                            : orderHistoryItem
                                                                        .paymentOption!
                                                                        .toLowerCase() ==
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
                                                    .bbOrderHistoryDetailPage,
                                                extra: orderHistoryItem);
                                          },
                                          label: "View Details",
                                          bgColor: ColorManager.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              })
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                    child: SvgPicture.asset(
                                        ImageAsset.emptyItems)),
                                const SizedBox(
                                  height: 16,
                                ),
                                customText("No orders found",
                                    ColorManager.textDark, 20, FontWeight.w800),
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
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
