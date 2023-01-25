// ignore: must_be_immutable
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/authentication/signup/domain/entities/signup_entities.dart';
import 'package:foodbusters/features/authentication/signup/presentation/bloc/signup_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/home/presentation/widgets/custom_button.dart';
import 'package:foodbusters/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SignupOtpPage extends StatefulWidget {
  const SignupOtpPage({
    Key? key,
    required this.signUpRequest,
  }) : super(key: key);
  final SignUpRequest signUpRequest;

  @override
  State<SignupOtpPage> createState() => _SignupOtpPageState();
}

class _SignupOtpPageState extends State<SignupOtpPage> {
  String otpCode = '';
  final _formKey = GlobalKey<FormState>();
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

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state is VerifyOtpLoading) {
          showLoadingDialog(context);
        } else if (state is VerifyOtpFailure) {
          Navigator.pop(context);
          scaleDialog(context, title: "Failure", body: state.error);
        } else if (state is VerifyOtpSuccess) {
          context.read<ProfileBloc>().add(const GetProfileInfo());
          Navigator.of(context).pop();
          context.read<AuthCubit>().checkAuthState();
          context.go(AppRoutes.landingPage);
        }
      },
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p28),
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customText("Verification", ColorManager.textDark, 36,
                          FontWeight.w800),
                      // Text(
                      //   "Verification",
                      //   style: Theme.of(context).textTheme.headline1,
                      // ),
                      const SizedBox(height: AppSize.s20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p28),
                        child: customTextCenter(
                            "4 digit verification code has been sent to your registered mobile number",
                            ColorManager.textGrey,
                            14,
                            FontWeight.w500),
                      ),
                      // Text(
                      //   "4 digit verification code has been sent to ${widget.signUpRequest.phoneNumber} mobile number",
                      //   style: Theme.of(context).textTheme.subtitle2,
                      // ),
                      const SizedBox(height: AppSize.s50),

                      customTextCenter("Please enter the OTP code to continue",
                          ColorManager.textGrey, 16, FontWeight.w500),
                      const SizedBox(height: AppSize.s30),
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
                          selectedColor:
                              ColorManager.hintColor.withOpacity(0.1),
                          inactiveColor: ColorManager.lightGrey,
                          activeColor: ColorManager.primary,
                          selectedFillColor: ColorManager.white,
                          inactiveFillColor: ColorManager.white,
                          activeFillColor: ColorManager.white,
                          fieldHeight: AppSize.s70,
                          fieldWidth: AppSize.s60,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      const SizedBox(height: AppSize.s40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          seconds == '00'
                              ? const SizedBox.shrink()
                              : customText("$seconds sec", ColorManager.skyBlue,
                                  16, FontWeight.w500),
                          TextButton(
                            onPressed: seconds == '00'
                                ? () {
                                    resetTimer();
                                    startTimer();
                                    context.read<SignupBloc>().add(
                                          GetSignupOtp(
                                            SignUpRequest(
                                              phoneNumber: widget
                                                  .signUpRequest.phoneNumber,
                                              password:
                                                  widget.signUpRequest.password,
                                              fullName:
                                                  widget.signUpRequest.fullName,
                                            ),
                                          ),
                                        );
                                  }
                                : null,
                            child: const Text("Resend OTP"),
                          ),
                        ],
                      ),

                      const SizedBox(height: AppSize.s40),
                      GestureDetector(
                        onTap: () {
                          if (otpCode == '') {
                          } else {
                            final signupRequest =
                                widget.signUpRequest.copyWith(otpCode: otpCode);
                            BlocProvider.of<SignupBloc>(context)
                                .add(VerifySignupOtp(signupRequest));
                          }
                        },
                        child: CustomBottom(
                            text: "Verify",
                            textColor: ColorManager.textDark,
                            backgroundColor: ColorManager.primary,
                            fontSize: 18,
                            padding: 16,
                            radius: 10),
                      ),

                      // SizedBox(
                      //   height: AppSize.s55,
                      //   width: double.infinity,
                      //   child: AppButton(
                      //     label: "Verify",
                      //     onPressed: () {
                      //       if (otpCode == '') {
                      //       } else {
                      //         final signupRequest = widget.signUpRequest
                      //             .copyWith(otpCode: otpCode);
                      //         BlocProvider.of<SignupBloc>(context)
                      //             .add(VerifySignupOtp(signupRequest));
                      //       }
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
