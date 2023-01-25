import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:foodbusters/features/authentication/forgot_password/presentation/bloc/forgot_password_bloc.dart';
import 'package:foodbusters/features/common/widgets/app_button.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/resources/resources.dart';

class ForgotPasswordOtpPage extends StatefulWidget {
  const ForgotPasswordOtpPage({Key? key, required this.requestModel})
      : super(key: key);
  final ForgotPasswordRequest requestModel;

  @override
  State<ForgotPasswordOtpPage> createState() => _ForgotPasswordOtpPageState();
}

class _ForgotPasswordOtpPageState extends State<ForgotPasswordOtpPage> {
  Timer? countdownTimer;
  Duration myDuration = const Duration(seconds: 60);
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void resetTimer() {
    setState(() => countdownTimer!.cancel());
    setState(() => myDuration = const Duration(seconds: 60));
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    countdownTimer?.cancel();
  }

  String otpCode = '';
  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorManager.white),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p28),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: AppSize.s130),
                Text(
                  "Verification",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(height: AppSize.s16),
                Text(
                  "4 digit verification code has been sent to ${widget.requestModel.mobileNumber} mobile number",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(height: AppSize.s16),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  onChanged: (String value) {
                    setState(() {
                      otpCode = value;
                    });
                  },
                  enableActiveFill: true,
                  animationDuration: const Duration(milliseconds: 300),
                  blinkWhenObscuring: true,
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(6),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    selectedColor: ColorManager.grey,
                    inactiveColor: ColorManager.lightGrey,
                    activeColor: ColorManager.lightGrey,
                    selectedFillColor: ColorManager.lightGrey,
                    inactiveFillColor: ColorManager.lightGrey,
                    activeFillColor: ColorManager.lightGrey,
                    fieldHeight: AppSize.s70,
                    fieldWidth: AppSize.s60,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(height: AppSize.s16),
                Text(
                  "Please enter the OTP to continue",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(height: AppSize.s16),
                SizedBox(
                  height: AppSize.s50,
                  width: double.infinity,
                  child: AppButton(
                    label: "Continue",
                    bgColor: otpCode.length < 4
                        ? ColorManager.lightGrey
                        : ColorManager.primary,
                    onPressed: otpCode.length < 4
                        ? null
                        : () {
                            final requestModel = widget.requestModel
                                .copyWith(otpCode: int.parse(otpCode));
                            context.push(
                              AppRoutes.forgotPasswordResetPage,
                              extra: requestModel,
                            );
                          },
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    seconds == '00'
                        ? const SizedBox.shrink()
                        : customText("$seconds sec", ColorManager.skyBlue, 16,
                            FontWeight.w500),
                    TextButton(
                      onPressed: seconds == '00'
                          ? () {
                              resetTimer();
                              startTimer();
                              context.read<ForgotPasswordBloc>().add(
                                  GetForgotPasswordOtp(
                                      widget.requestModel.mobileNumber!));
                            }
                          : null,
                      child: const Text("Resend OTP"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
