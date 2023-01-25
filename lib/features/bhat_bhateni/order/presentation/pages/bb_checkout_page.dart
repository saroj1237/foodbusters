import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/input_validators.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/address_settings/domain/entities/address_entity.dart';
import 'package:foodbusters/features/address_settings/presentataion/bloc/address_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/bloc/cart_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/bloc/b_b_order_bloc.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/order/presentation/bloc/coupon/coupon_cubit.dart';
import 'package:foodbusters/features/order/presentation/widgets/charges.dart';
import 'package:foodbusters/features/payment/presentation/pages/payment_selection_page.dart';
import 'package:go_router/go_router.dart';

import '../bloc/bb_delivery_charge_cubit/bb_delivery_charge_cubit.dart';

class BBCheckoutPage extends StatefulWidget {
  const BBCheckoutPage({Key? key, required this.cartResponse})
      : super(key: key);
  final CartResponse cartResponse;

  @override
  State<BBCheckoutPage> createState() => _BBCheckoutPageState();
}

class _BBCheckoutPageState extends State<BBCheckoutPage> {
  Timer? _debounce;
  @override
  void initState() {
    super.initState();
    context.read<CouponCubit>().clearCoupon();
    context.read<AddressBloc>().add(const GetAddress());
    totalPrice.value = widget.cartResponse.totalPrice?.toDouble() ?? 0.0;
    groupValue = paymentOptions[0];
  }

  List<PaymentOption> paymentOptions = [
    PaymentOption('Esewa', ImageAsset.esewaLogo),
    PaymentOption('Khalti', ImageAsset.khaltiLogo),
    PaymentOption('Cash on delivery', ImageAsset.codLogo),
  ];
  late PaymentOption groupValue;
  final _couponForm = GlobalKey<FormState>();
  final TextEditingController _couponCodeController = TextEditingController();
  int selectedValue = 0;
  Address? selectedAddress;
  final TextEditingController _instructionController = TextEditingController();

  _selectAddress(int selectedIndx, Address selectedAddr) async {
    setState(() {
      selectedValue = selectedIndx;
      selectedAddress = selectedAddr;
      context
          .read<BbDeliveryChargeCubit>()
          .calculateBBDeliveryFee(selectedAddress?.id ?? '');
    });
  }

  ValueNotifier<double> totalPrice = ValueNotifier<double>(0.0);
  ValueNotifier<String?> couponId = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.bbPrimary,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back, color: ColorManager.white)),
        title: Text(
          "Checkout",
          style: TextStyle(color: ColorManager.white),
        ),
      ),
      body: BlocListener<BBOrderBloc, BBOrderState>(
        listener: (context, state) {
          state.maybeWhen(
            placeOrderLoading: () {
              showLoadingDialog(context);
            },
            placeOrderFailure: (error) {
              Navigator.of(context).pop();
              scaleDialog(context, title: "Error", body: error);
            },
            placeOrderSuccess: (successRes) {
              Navigator.of(context).pop();
              PlaceOrderSuccessRes response = PlaceOrderSuccessRes(
                  orderId: successRes.orderId,
                  totalPrice: successRes.totalPrice,
                  oid: successRes.oid,
                  deliveryCharge: successRes.deliveryCharge,
                  restPrice: successRes.bbsmPrice,
                  isFoodbusters: false);
              debugPrint(response.toString());
              context.push(AppRoutes.paymentSelectionPage, extra: response);
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
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
                          padding: const EdgeInsets.all(AppPadding.p16),
                          decoration: BoxDecoration(
                              color: ColorManager.profileBg,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(AppSize.s10),
                              )),
                          child: Column(
                            children: [
                              BlocBuilder<AddressBloc, AddressState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    getAddressSuccess: (list) {
                                      if (list.isNotEmpty) {
                                        // For only first time- selected address is null
                                        if (selectedAddress == null) {
                                          selectedAddress = list[0];
                                          context
                                              .read<BbDeliveryChargeCubit>()
                                              .calculateBBDeliveryFee(
                                                  selectedAddress?.id ?? '');
                                        }
                                      } else if (list.isEmpty) {
                                        context
                                            .read<BbDeliveryChargeCubit>()
                                            .resetBBDeliveryFee();
                                      }
                                      return ListView.separated(
                                        itemCount: list.length,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        padding: EdgeInsets.zero,
                                        itemBuilder: (context, index) {
                                          final address = list[index];
                                          return InkWell(
                                            onTap: () {
                                              _selectAddress(index, address);
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: AppMargin.m12),
                                              child: Row(
                                                children: [
                                                  Radio<bool>(
                                                    value:
                                                        selectedValue == index
                                                            ? true
                                                            : false,
                                                    groupValue: true,
                                                    onChanged: (value) {
                                                      _selectAddress(
                                                          index, address);
                                                    },
                                                  ),
                                                  const SizedBox(
                                                      width: AppSize.s10),
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        customText(
                                                            address.name,
                                                            ColorManager
                                                                .textDark,
                                                            16,
                                                            FontWeight.w800),
                                                        const SizedBox(
                                                            height: AppSize.s8),
                                                        Text(
                                                          "${address.location.latitude.toStringAsFixed(2)}°N, ${address.location.longitude.toStringAsFixed(2)}°E",
                                                          maxLines: 2,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      showConfirmDialog(
                                                        context,
                                                        title: "Confirm",
                                                        desctiption:
                                                            "Are you sure to delete?",
                                                        onConfirm: () {
                                                          context
                                                              .read<
                                                                  AddressBloc>()
                                                              .add(
                                                                  DeleteAddress(
                                                                      address
                                                                          .id));
                                                        },
                                                      );
                                                    },
                                                    child: SvgPicture.asset(
                                                        ImageAsset.delete),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, indes) =>
                                            const Divider(),
                                      );
                                    },
                                    orElse: () {
                                      return const SizedBox.shrink();
                                    },
                                  );
                                },
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.push(AppRoutes.addressListPagePage);
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: AppMargin.m16),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: ColorManager.grey3),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s10),
                                  ),
                                  alignment: Alignment.center,
                                  height: AppSize.s50,
                                  width: double.infinity,
                                  child: Text(
                                    "+ Add Address",
                                    style:
                                        Theme.of(context).textTheme.headline4,
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
              // const SizedBox(height: AppSize.s16),
              // ITEMS SECTION
              BlocBuilder<CartBloc, CartState>(builder: (context, state) {
                return state.maybeWhen(
                  getCartSuccess: (response) {
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(AppPadding.p16),
                          decoration: BoxDecoration(
                              color: ColorManager.black,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(AppSize.s10),
                              )),
                          child: Text(
                            "Products",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: ColorManager.white,
                                    fontWeight: FontWeightManager.semiBold),
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
                              padding: const EdgeInsets.all(AppPadding.p16),
                              decoration: BoxDecoration(
                                  color: ColorManager.white,
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(AppSize.s10),
                                  )),
                              child: ListView.builder(
                                itemCount: response.items?.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final cartItem = response.items![index];
                                  return ListTile(
                                    dense: true,
                                    contentPadding: EdgeInsets.zero,
                                    minLeadingWidth: 16.0,
                                    leading: Text(
                                      "${index + 1}.",
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                    title: Text(
                                      cartItem.name,
                                      style:
                                          Theme.of(context).textTheme.headline4,
                                    ),
                                    subtitle: Text(
                                        "Rs.${cartItem.unitPrice} per unit"),
                                    trailing: Text("Qty. ${cartItem.quantity}"),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                );
              }),

              const SizedBox(height: AppSize.s16),
              // COUPON ENTRY FIELD

              Builder(builder: (context) {
                return BlocListener<CouponCubit, CouponState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      couponLoading: () {
                        showToast("Applying coupon..");
                      },
                      couponFailure: (error) {
                        showToast(error, bgColor: ColorManager.error);
                      },
                      couponSuccess: (response) {
                        showToast("Applied coupon: Rs.${response.couponAmount}",
                            bgColor: ColorManager.success);
                        totalPrice.value -= response.couponAmount;
                        couponId.value = response.id;
                      },
                      orElse: () {},
                    );
                  },
                  child: Form(
                    key: _couponForm,
                    child: Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.symmetric(
                          vertical: AppPadding.p10, horizontal: AppPadding.p8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _couponCodeController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: InputValidators.commonValidation,
                              onChanged: (value) {
                                // if (value.length < 3) return;
                                // if (_debounce?.isActive ?? false) {
                                //   _debounce?.cancel();
                                // }
                                // _debounce = Timer(
                                //     const Duration(milliseconds: 500), () {
                                //   context.read<CouponCubit>().clearCoupon();
                                // });
                                // final state =
                                //     BlocProvider.of<CouponCubit>(context).state;
                                // if (state is CouponSuccess) {}
                              },
                              decoration: InputDecoration(
                                fillColor: ColorManager.white,
                                filled: true,
                                contentPadding: const EdgeInsets.all(10),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorManager.grey3),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s10)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black.withOpacity(0.12),
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s10)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: ColorManager.errorOpacity50,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s10)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: ColorManager.errorOpacity50,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s10)),
                                hintText: "Coupon Code",
                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: AppSize.s10),
                          SizedBox(
                            height: AppSize.s50,
                            child: AppButton(
                              label: "Apply",
                              onPressed: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                if (!_couponForm.currentState!.validate()) {
                                  return;
                                }
                                final couponState =
                                    BlocProvider.of<CouponCubit>(context).state;
                                if (couponState is CouponSuccess) {
                                  showToast("Coupon already applied");
                                  return;
                                }
                                context.read<CouponCubit>().applyCoupon(
                                    CouponCodeReq(
                                        price: widget.cartResponse.totalPrice ??
                                            0.0,
                                        couponCode: _couponCodeController.text,
                                        type: "bbsm"));
                              },
                              labelColor: ColorManager.white,
                              bgColor: ColorManager.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
              const SizedBox(height: AppSize.s16),
              // SPECIAL INSTRUCTION SECTION
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(AppPadding.p16),
                    decoration: BoxDecoration(
                        color: ColorManager.black,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(AppSize.s10),
                        )),
                    child: Text(
                      "Special Instruction",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: ColorManager.white,
                          fontWeight: FontWeightManager.semiBold),
                    ),
                  ),
                  Stack(children: [
                    Positioned.fill(
                        child: Container(
                      color: ColorManager.black,
                    )),
                    Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(AppPadding.p16),
                      decoration: BoxDecoration(
                          color: ColorManager.white,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(AppSize.s10),
                          )),
                      child: TextField(
                        controller: _instructionController,
                        decoration: const InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            hintText:
                                "Let us know if there is any instruction"),
                      ),
                    ),
                  ]),
                ],
              ),
              const SizedBox(height: AppSize.s16),
              // Charge sections
              ChargeItem(
                  chargeType: "Total",
                  chargeAmount: widget.cartResponse.totalPrice ?? 0),
              BlocConsumer<BbDeliveryChargeCubit, BbDeliveryChargeState>(
                  listener: (context, state) {
                state.maybeWhen(
                  bBDeliveryFeeSuccess: (deliveryFee) {
                    totalPrice.value =
                        widget.cartResponse.totalPrice?.toDouble() ?? 0.0;
                    totalPrice.value = totalPrice.value + deliveryFee;
                  },
                  orElse: () {},
                );
              }, builder: (context, deliverState) {
                return deliverState.maybeWhen(
                  bBDeliveryFeeSuccess: (fee) {
                    return ChargeItem(
                        chargeType: "Deliery charge", chargeAmount: fee);
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
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                child: Divider(),
              ),
              ValueListenableBuilder(
                valueListenable: totalPrice,
                builder: (context, value, _) => ChargeItem(
                  chargeType: "Grand total",
                  chargeAmount: totalPrice.value,
                  bold: true,
                ),
              ),
              // Checkout button
              // SizedBox(
              //     height: AppSize.s50,
              //     width: double.infinity,
              //     child: AppButton(
              //       label: "Place order",
              //       onPressed: () {
              //         if (selectedAddress == null) {
              //           scaleDialog(
              //             context,
              //             title: "Add address",
              //             body: "Please add a shipping address",
              //             onPressed: () {
              //               Navigator.of(context).pop();
              //               context.push(AppRoutes.addressListPagePage);
              //             },
              //           );
              //           return;
              //         } else {
              //           context.read<BBOrderBloc>().add(
              //                 PlaceOrder(
              //                   PlaceOrderReq(
              //                     addressId: selectedAddress!.id,
              //                     specialInstruction:
              //                         _instructionController.text,
              //                     couponId: couponId.value,
              //                   ),
              //                 ),
              //               );
              //         }
              //       },
              //       bgColor: ColorManager.bbPrimary,
              //       labelColor: ColorManager.white,
              //     )),
              const SizedBox(height: AppSize.s100),
            ],
          ),
        )),
      ),
      bottomSheet: BottomSheet(
        elevation: 10,
        builder: (context) => Container(
            color: ColorManager.white,
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ValueListenableBuilder(
                    valueListenable: totalPrice,
                    builder: (context, value, _) => customText("Rs. $value",
                        ColorManager.textDark, 16.0, FontWeight.w800)),
                AppButton(
                  label: "",
                  bgColor: ColorManager.bbPrimary,
                  labelChild: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customText(
                          "Place Order",
                          ColorManager.white,
                          16.0,
                          FontWeight.w800,
                        ),
                        const SizedBox(width: AppSize.s8),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: ColorManager.white,
                        )
                      ],
                    ),
                  ),
                  onPressed: () {
                    if (selectedAddress == null) {
                      scaleDialog(
                        context,
                        title: "Add address",
                        body: "Please add a shipping address",
                        onPressed: () {
                          Navigator.of(context).pop();
                          context.push(AppRoutes.addressListPagePage);
                        },
                      );
                      return;
                    } else {
                      context.read<BBOrderBloc>().add(
                            PlaceOrder(
                              PlaceOrderReq(
                                addressId: selectedAddress!.id,
                                specialInstruction: _instructionController.text,
                                couponId: couponId.value,
                              ),
                            ),
                          );
                    }
                  },
                )
              ],
            )),
        onClosing: () {},
      ),
    );
  }
}
