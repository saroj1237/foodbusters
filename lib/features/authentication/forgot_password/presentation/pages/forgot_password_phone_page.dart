import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/input_validators.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:foodbusters/features/authentication/forgot_password/presentation/bloc/forgot_password_bloc.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordPhonePage extends StatelessWidget {
  ForgotPasswordPhonePage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController mobileNumberController = TextEditingController();
  Widget _buildMobileNumber() {
    return TextFormField(
      controller: mobileNumberController,
      validator: InputValidators.mobileNumberValidator,
      keyboardType: TextInputType.phone,
      maxLength: 10,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        counterText: '',
        contentPadding: const EdgeInsets.all(10),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primary,
            ),
            borderRadius: BorderRadius.circular(AppSize.s10)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black.withOpacity(0.12),
            ),
            borderRadius: BorderRadius.circular(AppSize.s10)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.errorOpacity50,
            ),
            borderRadius: BorderRadius.circular(AppSize.s10)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.errorOpacity50,
            ),
            borderRadius: BorderRadius.circular(AppSize.s10)),
        hintText: "Mobile Number",
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.5),
          fontWeight: FontWeight.w500,
        ),
        prefixIcon: const Icon(
          Icons.person,
          color: Colors.black45,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        state.maybeWhen(loading: () {
          showLoadingDialog(context);
        }, getForgotPasswordOtpFailure: (error) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error),
            ),
          );
        }, getForgotPasswordOtpSuccess: () {
          Navigator.of(context).pop();
          ForgotPasswordRequest requestModel =
              ForgotPasswordRequest(mobileNumber: mobileNumberController.text);
          context.push(AppRoutes.forgotPasswordOtpPage, extra: requestModel);
        }, orElse: () {
          return;
        });
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p28),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: AppSize.s65),
                    const SizedBox(height: AppSize.s65),
                    SvgPicture.asset(ImageAsset.logoSvg),
                    const SizedBox(height: AppSize.s28),
                    Text(
                      "Forgot Password",
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          ?.copyWith(fontSize: 30),
                    ),
                    const SizedBox(height: AppSize.s28),
                    _buildMobileNumber(),
                    const SizedBox(height: AppSize.s28),
                    SizedBox(
                        width: double.maxFinite,
                        height: AppSize.s50,
                        child: AppButton(
                          labelTextSize: 16,
                          label: "Request OTP",
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) return;
                            context.read<ForgotPasswordBloc>().add(
                                GetForgotPasswordOtp(
                                    mobileNumberController.text));
                          },
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
