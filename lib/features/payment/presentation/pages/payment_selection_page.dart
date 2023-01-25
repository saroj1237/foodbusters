import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:foodbusters/features/payment/domain/entities/payment_entity.dart';
import 'package:foodbusters/features/payment/presentation/bloc/payment/payment_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/app_dialogs.dart';
import '../../../common/widgets/app_button.dart';

class PaymentSelectionPage extends StatefulWidget {
  const PaymentSelectionPage({Key? key, required this.successRes})
      : super(key: key);
  final PlaceOrderSuccessRes successRes;

  @override
  State<PaymentSelectionPage> createState() => _PaymentSelectionPageState();
}

class _PaymentSelectionPageState extends State<PaymentSelectionPage> {
  List<PaymentOption> paymentOptions = [
    PaymentOption('Esewa', ImageAsset.esewaLogo),
    // PaymentOption('Khalti', ImageAsset.khaltiLogo),
    PaymentOption('Cash on delivery', ImageAsset.codLogo),
  ];
  late PaymentOption groupValue;
  @override
  void initState() {
    super.initState();
    groupValue = paymentOptions[0];
  }

  Future<dynamic> esewaPay() async {
    try {
      EsewaFlutterSdk.initPayment(
        esewaConfig: EsewaConfig(
          environment: Environment.live,
          clientId: clientId,
          secretId: clientSecret,
        ),
        esewaPayment: EsewaPayment(
          productId: widget.successRes.oid,
          productName: widget.successRes.oid,
          productPrice: widget.successRes.totalPrice.toString(), //'1',
          callbackUrl: "",
        ),
        onPaymentSuccess: (EsewaPaymentSuccessResult data) async {
          debugPrint(":::SUCCESS::: => $data");
          context.read<PaymentBloc>().add(
                PaywithEsewa(
                  PaymentReq(
                    paymentOption: groupValue.paymentType.toLowerCase(),
                    oid: widget.successRes.oid,
                    referenceId: data.refId,
                  ),
                ),
              );
          // return data;
        },
        onPaymentFailure: (data) {
          debugPrint(":::FAILURE::: => $data");
        },
        onPaymentCancellation: (data) {
          debugPrint(":::CANCELLATION::: => $data");
        },
      );
    } on Exception catch (e) {
      debugPrint("EXCEPTION : ${e.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isFoodbusters = widget.successRes.isFoodbusters == null ||
        widget.successRes.isFoodbusters == true;
    return WillPopScope(
      onWillPop: () async {
        if (isFoodbusters) {
          // context.push(AppRoutes.orderHistoryDetailPage,
          //     extra: widget.successRes.oid);
          context.go(AppRoutes.landingPage);
          context
              .read<BottomNavCubit>()
              .changeBottomNavIndex(2, BottomNavType.foodbusters);
        } else {
          context.go(AppRoutes.bbLandingPage);
          context
              .read<BottomNavCubit>()
              .changeBottomNavIndex(2, BottomNavType.bhatBhateni);
        }
        return false;
      },
      child: Scaffold(
        backgroundColor:
            isFoodbusters ? ColorManager.primary : ColorManager.bbPrimary,
        body: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor:
                  isFoodbusters ? ColorManager.primary : ColorManager.bbPrimary,
              title: const Text("Payment"),
              automaticallyImplyLeading: false,
            ),
            body: BlocListener<PaymentBloc, PaymentState>(
              listener: (context, state) {
                state.maybeWhen(
                  paymentLoading: () {
                    showLoadingDialog(context,
                        message: "Verifying your order..");
                  },
                  paymentFailure: (error) {
                    Navigator.of(context).pop();
                    context.push(AppRoutes.paymentFailurePage);
                  },
                  paymentSuccess: (success) {
                    Navigator.of(context).pop();
                    context.push(AppRoutes.paymentSuccessPage);
                  },
                  orElse: () {},
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
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
                      child: Text(
                        "Select payment method",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: ColorManager.white,
                            fontWeight: FontWeightManager.semiBold),
                      ),
                    ),
                    Stack(
                      children: [
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
                                top: Radius.circular(AppSize.s10),
                                bottom: Radius.circular(AppSize.s10),
                              )),
                          child: Column(
                            children: [
                              for (int i = 0; i < paymentOptions.length; i++)
                                DeliveryOption(
                                  paymentOption: paymentOptions[i],
                                  groupValue: groupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      groupValue = value ?? groupValue;
                                    });
                                    debugPrint(value!.paymentType);
                                  },
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
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
                      customText("Rs. ${widget.successRes.totalPrice}",
                          ColorManager.textDark, 16.0, FontWeight.w800),
                      SizedBox(
                        // width: AppSize.s150,
                        height: AppSize.s50,
                        child: AppButton(
                          label: groupValue == paymentOptions[0]
                              ? "Proceed  "
                              : "Confirm  ",
                          bgColor: isFoodbusters
                              ? ColorManager.primary
                              : ColorManager.bbPrimary,
                          labelColor: isFoodbusters
                              ? ColorManager.textDark
                              : ColorManager.white,
                          labelChild: Icon(
                            Icons.arrow_forward_rounded,
                            color: isFoodbusters
                                ? ColorManager.black
                                : ColorManager.white,
                          ),
                          showboth: true,
                          onPressed: () async {
                            // debugPrint(groupValue.paymentType);
                            if (groupValue.paymentType.toLowerCase() ==
                                "esewa") {
                              await esewaPay();
                            } else {
                              // make cash on delivery payment
                              context.read<PaymentBloc>().add(
                                    PaywithCOD(
                                      PaymentReq(
                                        paymentOption: groupValue.paymentType
                                            .toLowerCase(),
                                        oid: widget.successRes.oid,
                                      ),
                                    ),
                                  );
                            }
                          },
                        ),
                      )
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

class DeliveryOption extends StatelessWidget {
  const DeliveryOption({
    Key? key,
    required this.paymentOption,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);
  final PaymentOption paymentOption;
  final PaymentOption groupValue;
  final void Function(PaymentOption? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: paymentOption,
      groupValue: groupValue,
      onChanged: onChanged,
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 0, vertical: AppPadding.p10),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
            width: 25,
            child: Image.asset(
              paymentOption.logoUrl,
            ),
          ),
          const SizedBox(width: AppSize.s12),
          Text(paymentOption.paymentType),
        ],
      ),
    );
  }
}

class PaymentOption {
  final String paymentType;
  final String logoUrl;
  PaymentOption(this.paymentType, this.logoUrl);
}
