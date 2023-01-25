import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/order/domain/entities/order_entity.dart';
import 'package:foodbusters/features/payment/khalti/domain/entities/khalti_entity.dart';
import 'package:foodbusters/features/payment/khalti/presentation/bloc/khalti_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:khalti/khalti.dart';

class KhaltiLoginPage extends StatefulWidget {
  const KhaltiLoginPage({Key? key, required this.orderSuccessRes})
      : super(
          key: key,
        );
  final PlaceOrderSuccessRes orderSuccessRes;
  @override
  State<KhaltiLoginPage> createState() => _KhaltiLoginPageState();
}

class _KhaltiLoginPageState extends State<KhaltiLoginPage> {
  late final TextEditingController _mobileController, _pinController;
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _mobileController = TextEditingController();
    _pinController = TextEditingController();
  }

  @override
  void dispose() {
    _mobileController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.khaltiColor,
        iconTheme: IconThemeData(color: ColorManager.white),
        title: Text(
          'Pay with khalti',
          style: TextStyle(color: ColorManager.white),
        ),
      ),
      body: BlocListener<KhaltiBloc, KhaltiState>(
        listener: (context, state) {
          state.maybeWhen(
            khaltiPayLoading: () {
              showLoadingDialog(context);
            },
            initiatePaymentFailure: (error) {
              Navigator.of(context).pop();
              scaleDialog(context, title: "Khalti Failure", body: error);
            },
            initiatePaymentSuccess: (initiationSuccessModel, mpin) {
              Navigator.of(context).pop();
              context.push(AppRoutes.khaltiOtpPage,
                  extra: KhaltiOtpPageModel(
                      initPaySuccess: InitiatePaySuccess(
                          paymentInitiationResponseModel:
                              initiationSuccessModel,
                          mpin: mpin),
                      orderId: widget.orderSuccessRes.orderId));
            },
            orElse: () {},
          );
        },
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              TextFormField(
                validator: (v) => (v?.isEmpty ?? true) ? 'Required ' : null,
                decoration: const InputDecoration(
                  label: Text('Mobile Number'),
                ),
                controller: _mobileController,
              ),
              TextFormField(
                validator: (v) => (v?.isEmpty ?? true) ? 'Required ' : null,
                decoration: const InputDecoration(
                  label: Text('Khalti MPIN'),
                ),
                controller: _pinController,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        ColorManager.khaltiColor)),
                onPressed: () async {
                  if (!(_formKey.currentState?.validate() ?? false)) return;
                  int amountInPaisa =
                      (widget.orderSuccessRes.totalPrice * 100).toInt();
                  context
                      .read<KhaltiBloc>()
                      .add(InitiatePayment(PaymentInitiationRequestModel(
                        amount: amountInPaisa,
                        mobile: _mobileController.text,
                        productIdentity: widget.orderSuccessRes.orderId,
                        productName: widget.orderSuccessRes.orderId,
                        transactionPin: _pinController.text,
                      )));

                  // final otpCode = await showDialog<String>(
                  //   context: context,
                  //   barrierDismissible: false,
                  //   builder: (context) {
                  //     String? otp;
                  //     return AlertDialog(
                  //       title: const Text('OTP Sent!'),
                  //       content: TextField(
                  //         decoration: const InputDecoration(
                  //           label: Text('OTP Code'),
                  //         ),
                  //         onChanged: (v) => otp = v,
                  //       ),
                  //       actions: [
                  //         SimpleDialogOption(
                  //           child: const Text('OK'),
                  //           onPressed: () => Navigator.pop(context, otp),
                  //         )
                  //       ],
                  //     );
                  //   },
                  // );

                  // if (otpCode != null) {
                  //   try {
                  //     final model = await Khalti.service.confirmPayment(
                  //       request: PaymentConfirmationRequestModel(
                  //         confirmationCode: otpCode,
                  //         token: initiationModel.token,
                  //         transactionPin: _pinController.text,
                  //       ),
                  //     );

                  //     debugPrint(model.toString());
                  //   } catch (e) {
                  //     ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                  //       SnackBar(content: Text(e.toString())),
                  //     );
                  //   }
                  // }
                },
                child: Text('PAY Rs. ${widget.orderSuccessRes.totalPrice}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
