import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/payment/domain/entities/payment_entity.dart';
import 'package:foodbusters/features/payment/presentation/bloc/payment/payment_bloc.dart';
import 'package:foodbusters/features/payment/presentation/pages/payment_selection_page.dart';
import 'package:foodbusters/features/payment/presentation/pages/payment_success_page.dart';

class PaymentVerificationPage extends StatefulWidget {
  const PaymentVerificationPage({Key? key, required this.pageModel})
      : super(key: key);
  final PaymentVerificationPageModel pageModel;

  @override
  State<PaymentVerificationPage> createState() =>
      _PaymentVerificationPageState();
}

class _PaymentVerificationPageState extends State<PaymentVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          widget.pageModel.paymentOption.paymentType.toLowerCase() == "khalti"
              ? null
              : AppBar(
                  backgroundColor: ColorManager.lightGrey1,
                  title: const Text("Confirm your payment"),
                ),
      body: widget.pageModel.paymentOption.paymentType.toLowerCase() == "esewa"
          ? BuildPage(pageModel: widget.pageModel)
          // : pageModel.paymentOption.paymentType.toLowerCase() == "khalti"
          //     ? KhaltiLoginPage(
          //         orderSuccessRes: PlaceOrderSuccessRes(
          //         orderId: pageModel.placeOrderSuccessRes.orderId,
          //         oid: '',
          //         totalPrice: pageModel.placeOrderSuccessRes.totalPrice,
          //       ))
          : BuildPage(pageModel: widget.pageModel),
    );
  }
}

class BuildPage extends StatelessWidget {
  const BuildPage({
    Key? key,
    required this.pageModel,
  }) : super(key: key);

  final PaymentVerificationPageModel pageModel;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentBloc, PaymentState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          paymentLoading: () {
            showLoadingDialog(context);
          },
          paymentFailure: (error) {
            Navigator.of(context).pop();
            showSnackBar(context, message: error);
          },
          paymentSuccess: (val) {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PaymentSuccessPage(),
              ),
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Payment method: ${pageModel.paymentOption.paymentType}"),
              const SizedBox(height: AppSize.s16),
              SizedBox(
                height: AppSize.s50,
                width: double.infinity,
                child: AppButton(
                  label: "Pay Rs.${pageModel.placeOrderSuccessRes.totalPrice}",
                  onPressed: () {
                    if (pageModel.paymentOption.paymentType.toLowerCase() ==
                        "esewa") {
                      debugPrint("esewa");
                      // context.read<PaymentBloc>().add(PaywithEsewa(
                      //       PaymentReq(
                      //         oid: pageModel.placeOrderSuccessRes.oid,
                      //         paymentOption:
                      //             pageModel.paymentOption.paymentType,
                      //       ),
                      //     ));
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const EsewaLoginPage()));
                      showSnackBar(context,
                          message: 'Payment Feature not available right now.');
                    }
                    // else if (pageModel.paymentOption.paymentType.toLowerCase() ==
                    //     'khalti') {
                    //   // khalti
                    //   debugPrint("khalti");
                    //   context.push(AppRoutes.khaltiLoginPage,
                    //       extra: pageModel.placeOrderSuccessRes);
                    // }
                    else if (pageModel.paymentOption.paymentType
                            .toLowerCase() ==
                        'cash on delivery') {
                      context.read<PaymentBloc>().add(
                            PaywithCOD(PaymentReq(
                              paymentOption: pageModel.paymentOption.paymentType
                                  .toLowerCase(),
                              oid: pageModel.placeOrderSuccessRes.oid,
                            )),
                          );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentVerificationPageModel {
  final PaymentOption paymentOption;
  final PlaceOrderSuccessRes placeOrderSuccessRes;

  PaymentVerificationPageModel(
      {required this.paymentOption, required this.placeOrderSuccessRes});
}
