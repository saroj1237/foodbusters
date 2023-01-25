import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/input_validators.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:foodbusters/features/authentication/forgot_password/presentation/bloc/forgot_password_bloc.dart';
import 'package:foodbusters/features/common/widgets/app_button.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordResetPage extends StatefulWidget {
  const ForgotPasswordResetPage({Key? key, required this.requestModel})
      : super(key: key);
  final ForgotPasswordRequest requestModel;

  @override
  State<ForgotPasswordResetPage> createState() =>
      _ForgotPasswordResetPageState();
}

class _ForgotPasswordResetPageState extends State<ForgotPasswordResetPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool showPassword = false;

  bool showConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        state.maybeWhen(
            loading: () {
              showLoadingDialog(context);
            },
            resetPasswordFailure: (error) {
              context.pop();
              showSnackBar(
                context,
                message: error,
                bgColor: ColorManager.error,
              );
            },
            resetPasswordSuccess: () {
              context.pop();
              showSnackBar(
                context,
                message:
                    "Password reset successfully. Please login with new credential",
              );
              context.go(AppRoutes.loginPage);
            },
            orElse: () {});
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: AppSize.s65),
                    Center(child: SvgPicture.asset('assets/images/logo.svg')),
                    const SizedBox(height: AppSize.s28),
                    Text(
                      "Reset Password",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(height: AppSize.s28),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: !showPassword,
                      validator: InputValidators.passwordValidator,
                      decoration: InputDecoration(
                          hintText: "New Password",
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: AppSize.s26,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: AppSize.s26,
                            ),
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s10),
                          )),
                    ),
                    const SizedBox(height: AppSize.s16),
                    TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: !showConfirmPassword,
                      validator: InputValidators.passwordValidator,
                      decoration: InputDecoration(
                          hintText: "Confirm Password",
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: AppSize.s26,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              showConfirmPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: AppSize.s26,
                            ),
                            onPressed: () {
                              setState(() {
                                showConfirmPassword = !showConfirmPassword;
                              });
                            },
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s10),
                          )),
                    ),
                    const SizedBox(height: AppSize.s28),
                    SizedBox(
                        width: double.maxFinite,
                        height: AppSize.s55,
                        child: AppButton(
                          label: "Reset Password",
                          onPressed: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                            if (!_formKey.currentState!.validate()) return;
                            if (_confirmPasswordController.text !=
                                _passwordController.text) {
                              showSnackBar(context,
                                  message: "Password doesnot match");
                              return;
                            }
                            final requestModel = widget.requestModel
                                .copyWith(password: _passwordController.text);
                            context.read<ForgotPasswordBloc>().add(
                                  ResetPassword(requestModel),
                                );
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
