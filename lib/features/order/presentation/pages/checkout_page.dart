import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/address_settings/domain/entities/address_entity.dart';
import 'package:foodbusters/features/address_settings/presentataion/bloc/address_bloc.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/order/presentation/bloc/coupon/coupon_cubit.dart';
import 'package:foodbusters/features/order/presentation/bloc/delivery_fee_cubit/delivery_fee_cubit.dart';
import 'package:foodbusters/features/order/presentation/bloc/order_bloc.dart';
import 'package:foodbusters/features/order/presentation/widgets/charges.dart';
import 'package:foodbusters/features/order/presentation/widgets/coupon_code.dart';
import 'package:foodbusters/features/order/presentation/widgets/special_instruction.dart';
import 'package:go_router/go_router.dart';

class CheckoutPage extends StatefulWidget {
  final BagItem bagItem;
  const CheckoutPage({Key? key, required this.bagItem}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  late num totalAmount;
  final TextEditingController _specialInstructionController =
      TextEditingController();
  final TextEditingController _couponCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    totalAmount = widget.bagItem.totalPrice;
    context.read<AddressBloc>().add(const GetAddress());
  }

  @override
  void dispose() {
    super.dispose();
    _specialInstructionController.dispose();
    _couponCodeController.dispose();
  }

  final _couponForm = GlobalKey<FormState>();
  String? couponId;

  int selectedValue = 0;
  Address? selectedAddress;

  _selectAddress(int selectedIndx, Address selectedAddr) async {
    setState(() {
      selectedValue = selectedIndx;
      selectedAddress = selectedAddr;
      context.read<DeliveryFeeCubit>().getDeliverFee(DeliveryFeeReq(
          addressId: selectedAddress!.id,
          restaurantId: widget.bagItem.restaurantId));
    });
  }

  @override
  Widget build(BuildContext context) {
    num payableAmount = widget.bagItem.totalPrice;
    return WillPopScope(
      onWillPop: () async {
        couponId = null;
        context.read<CouponCubit>().clearCoupon();
        return true;
      },
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              title: const Text("Checkout"),
            ),
            body: BlocListener<DeliveryFeeCubit, DeliveryFeeState>(
              listener: (context, state) {
                state.maybeWhen(
                    orElse: () {},
                    deliveryFeeLoading: () {
                      showLoadingDialog(context,
                          message: "Calculating delivery fee");
                    },
                    deliveryFeeFailure: (error) {
                      Navigator.of(context).pop();
                      scaleDialog(context,
                          title: "Oops!",
                          body:
                              "Could not determine delivery fee. Please try again later.");
                    },
                    deliveryFeeLoaded: (deliveryFee) {
                      Navigator.of(context).pop();
                      final cs = context.read<CouponCubit>().state;
                      if (cs is CouponSuccess) {
                        totalAmount = widget.bagItem.totalPrice;
                        totalAmount = totalAmount +
                            deliveryFee -
                            cs.couponRes.couponAmount;
                        setState(() {});
                      } else {
                        totalAmount = widget.bagItem.totalPrice;
                        totalAmount = totalAmount + deliveryFee;
                        setState(() {});
                      }
                    });
              },
              child: BlocListener<CouponCubit, CouponState>(
                listener: (constext, state) {
                  state.maybeWhen(
                    couponLoading: () {
                      showLoadingDialog(context);
                    },
                    couponSuccess: (res) {
                      Navigator.of(context).pop();
                      couponId = res.id;
                      final dfs = context.read<DeliveryFeeCubit>().state;
                      if (dfs is DeliveryFeeLoaded) {
                        totalAmount = widget.bagItem.totalPrice;
                        totalAmount =
                            totalAmount + dfs.deliveryFee - res.couponAmount;
                        // totalAmount = totalAmount - res.couponAmount;
                        setState(() {});
                      }

                      showToast("Copon Applied");
                    },
                    couponFailure: (error) {
                      Navigator.of(context).pop();
                      showToast(error);
                      couponId = null;
                    },
                    orElse: () {
                      couponId = null;
                    },
                  );
                },
                child: BlocListener<OrderBloc, OrderState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orderLoading: () {
                        showLoadingDialog(context, message: "Placing order");
                      },
                      placeOrderFailure: (error) {
                        Navigator.of(context).pop();
                        scaleDialog(context, title: "Error", body: error);
                      },
                      placeOrderSuccess: (success) {
                        Navigator.of(context).pop();
                        // showSnackBar(context,
                        //     message:
                        //         "Order placed successfully. Please proceed to payment.");
                        context.read<BagBloc>().add(const GetBagItems());
                        // Navigate to payment page
                        context.push(AppRoutes.paymentSelectionPage,
                            extra: success);
                      },
                      orElse: () {},
                    );
                  },
                  child: SingleChildScrollView(
                    // reverse: true,
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p16),
                      child: Column(
                        children: [
                          // ADDRESS SECTION
                          ClipRRect(
                            borderRadius: BorderRadius.circular(AppSize.s10),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(AppPadding.p16),
                                  decoration: BoxDecoration(
                                      color: ColorManager.black,
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(AppSize.s10),
                                      )),
                                  child: customText(
                                    "Deliver To",
                                    ColorManager.white,
                                    20.0,
                                    FontWeight.w800,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned.fill(
                                        child: Container(
                                      color: ColorManager.black,
                                    )),
                                    Container(
                                      width: double.maxFinite,
                                      padding:
                                          const EdgeInsets.all(AppPadding.p16),
                                      decoration: BoxDecoration(
                                          color: ColorManager.profileBg,
                                          borderRadius:
                                              const BorderRadius.vertical(
                                            top: Radius.circular(AppSize.s10),
                                          )),
                                      child: Column(
                                        children: [
                                          BlocBuilder<AddressBloc,
                                              AddressState>(
                                            builder: (context, state) {
                                              return state.maybeWhen(
                                                getAddressSuccess: (list) {
                                                  if (list.isNotEmpty) {
                                                    // For only first time- selected address is null
                                                    if (selectedAddress ==
                                                        null) {
                                                      selectedAddress = list[0];
                                                      final DeliveryFeeReq req =
                                                          DeliveryFeeReq(
                                                              addressId:
                                                                  list[0].id,
                                                              restaurantId: widget
                                                                  .bagItem
                                                                  .restaurantId);
                                                      context
                                                          .read<
                                                              DeliveryFeeCubit>()
                                                          .getDeliverFee(req);
                                                    }
                                                  } else if (list.isEmpty) {
                                                    context
                                                        .read<
                                                            DeliveryFeeCubit>()
                                                        .resetDeliveryFee();
                                                  }
                                                  return ListView.separated(
                                                    itemCount: list.length,
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    shrinkWrap: true,
                                                    padding: EdgeInsets.zero,
                                                    itemBuilder:
                                                        (context, index) {
                                                      final address =
                                                          list[index];
                                                      return InkWell(
                                                        onTap: () {
                                                          _selectAddress(
                                                              index, address);
                                                        },
                                                        child: Container(
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  bottom:
                                                                      AppMargin
                                                                          .m12),
                                                          child: Row(
                                                            children: [
                                                              Radio<bool>(
                                                                value:
                                                                    selectedValue ==
                                                                            index
                                                                        ? true
                                                                        : false,
                                                                groupValue:
                                                                    true,
                                                                onChanged:
                                                                    (value) {
                                                                  _selectAddress(
                                                                      index,
                                                                      address);
                                                                },
                                                              ),
                                                              const SizedBox(
                                                                  width: AppSize
                                                                      .s10),
                                                              Expanded(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    customText(
                                                                        address
                                                                            .name,
                                                                        ColorManager
                                                                            .textDark,
                                                                        16,
                                                                        FontWeight
                                                                            .w800),
                                                                    const SizedBox(
                                                                        height:
                                                                            AppSize.s8),
                                                                    Text(
                                                                      "${address.location.latitude.toStringAsFixed(2)}°N, ${address.location.longitude.toStringAsFixed(2)}°E",
                                                                      maxLines:
                                                                          2,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  showConfirmDialog(
                                                                    context,
                                                                    title:
                                                                        "Confirm",
                                                                    desctiption:
                                                                        "Are you sure to delete?",
                                                                    onConfirm:
                                                                        () {
                                                                      context
                                                                          .read<
                                                                              AddressBloc>()
                                                                          .add(DeleteAddress(
                                                                              address.id));
                                                                    },
                                                                  );
                                                                },
                                                                child: SvgPicture
                                                                    .asset(ImageAsset
                                                                        .delete),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    separatorBuilder:
                                                        (context, indes) =>
                                                            const Divider(),
                                                  );
                                                },
                                                orElse: () {
                                                  return const SizedBox
                                                      .shrink();
                                                },
                                              );
                                            },
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context.push(AppRoutes
                                                  .addressListPagePage);
                                            },
                                            child: Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal:
                                                          AppMargin.m16),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: ColorManager.grey3),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppSize.s10),
                                              ),
                                              alignment: Alignment.center,
                                              height: AppSize.s50,
                                              width: double.infinity,
                                              child: Text(
                                                "+ Add Address",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline4,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSize.s20),
                          // SPECIAL INSTRUCTION
                          SpecialInstruction(
                              specialInstructionController:
                                  _specialInstructionController),
                          const SizedBox(height: AppSize.s20),
                          // COUPON ENTRY FIELD
                          CouponCode(
                              couponForm: _couponForm,
                              couponCodeController: _couponCodeController,
                              widget: widget),
                          const SizedBox(height: AppSize.s20),
                          // CHARGES
                          ChargeItem(
                              chargeType: "Total",
                              chargeAmount: widget.bagItem.totalPrice),
                          BlocConsumer<DeliveryFeeCubit, DeliveryFeeState>(
                              listener: (context, state) {
                            state.maybeWhen(
                              deliveryFeeLoaded: (fee) {
                                payableAmount = payableAmount + fee;
                              },
                              orElse: () {},
                            );
                          }, builder: (context, deliverState) {
                            return deliverState.maybeWhen(
                              deliveryFeeLoaded: (fee) {
                                return ChargeItem(
                                    chargeType: "Deliery charge",
                                    chargeAmount: fee);
                              },
                              orElse: () {
                                return const SizedBox.shrink();
                              },
                            );
                          }),
                          BlocBuilder<CouponCubit, CouponState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                couponSuccess: (res) {
                                  return ChargeItem(
                                      chargeType: "Coupon discount",
                                      chargeAmount: res.couponAmount);
                                },
                                orElse: () {
                                  return const SizedBox.shrink();
                                },
                              );
                            },
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 16),
                            child: Divider(),
                          ),
                          ChargeItem(
                            chargeType: "Grand total",
                            chargeAmount: totalAmount,
                            bold: true,
                          ),
                          const SizedBox(height: AppSize.s100)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            bottomSheet: BottomSheet(
              elevation: 10,
              builder: (context) => Container(
                  color: ColorManager.white,
                  padding: const EdgeInsets.all(AppPadding.p16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText("Rs. ${totalAmount.toStringAsFixed(2)}",
                          ColorManager.textDark, 16.0, FontWeight.w800),
                      AppButton(
                        label: "",
                        labelChild: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customText("Place Order", ColorManager.textDark,
                                  16.0, FontWeight.w800),
                              const SizedBox(width: AppSize.s8),
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: ColorManager.black,
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          if (selectedAddress == null) {
                            showToast("Please select shipping address");
                            return;
                          } else if (context.read<DeliveryFeeCubit>().state
                              is! DeliveryFeeLoaded) {
                            scaleDialog(context,
                                title: "Oops!",
                                body:
                                    "Could not determine delivery fee. Please try again later.");

                            return;
                          }

                          context.read<OrderBloc>().add(
                                PlaceOrder(
                                  reqModel: PlaceOrderReq(
                                    addressId: selectedAddress!.id,
                                    couponId: couponId,
                                    restaurantId: widget.bagItem.restaurantId,
                                    specialInstruction:
                                        _specialInstructionController.text,
                                  ),
                                ),
                              );
                        },
                      )
                      // onPressed: () {
                      //   if (selectedAddress == null) {
                      //     showToast("Please select shipping address");
                      //     return;
                      //   }

                      //   context.read<OrderBloc>().add(
                      //         PlaceOrder(
                      //           reqModel: PlaceOrderReq(
                      //             addressId: selectedAddress!.id,
                      //             couponId: couponId,
                      //             restaurantId: widget.bagItem.restaurantId,
                      //             specialInstruction:
                      //                 _specialInstructionController.text,
                      //           ),
                      //         ),
                      //       );
                      // },
                      // )
                    ],
                  )),
              onClosing: () {},
            ),
          ),
        ),
      ),
    );
  }
}
