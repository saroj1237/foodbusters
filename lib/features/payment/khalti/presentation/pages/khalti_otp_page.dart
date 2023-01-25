import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/payment/khalti/domain/entities/khalti_entity.dart';
import 'package:foodbusters/features/payment/khalti/presentation/bloc/khalti_bloc.dart';
import 'package:go_router/go_router.dart';

class KhaltiOtpPage extends StatelessWidget {
  KhaltiOtpPage({Key? key, required this.pageModel}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();
  final KhaltiOtpPageModel pageModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: ColorManager.white),
          backgroundColor: ColorManager.khaltiColor,
          title: Text(
            "Confirm and Pay",
            style: TextStyle(color: ColorManager.white),
          ),
        ),
        body: BlocListener<KhaltiBloc, KhaltiState>(
          listener: (context, state) {
            state.maybeWhen(
              khaltiPayLoading: () {
                showLoadingDialog(context);
              },
              confirmPaymentFailure: (error) {
                Navigator.of(context).pop();
                scaleDialog(context,
                    title: "Confirmation Failure", body: error);
              },
              confirmPaymentSuccess: (paymentSuccessModel) {
                debugPrint("success");
                Navigator.of(context).pop();
                showSuccessDialog(context,
                    title: 'Payment Success',
                    body: 'Your payment with Khalti is successful done',
                    onPressed: () {
                  context.go(AppRoutes.landingPage);
                });
              },
              orElse: () {},
            );
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const Text(
                    //     "Please confirm the otp code sent to your mobile number"),
                    // const SizedBox(height: AppSize.s16),
                    TextFormField(
                      controller: _otpController,
                      decoration: const InputDecoration(
                        label: Text('OTP Code'),
                      ),
                    ),
                    const SizedBox(height: AppSize.s16),
                    SizedBox(
                      height: AppSize.s50,
                      width: double.infinity,
                      child: AppButton(
                        label: "Confirm OTP",
                        onPressed: () {
                          if (_otpController.text.length < 6) return;
                          context.read<KhaltiBloc>().add(
                                ConfirmPayment(pageModel, _otpController.text),
                              );
                        },
                        bgColor: ColorManager.khaltiColor,
                        labelColor: ColorManager.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
