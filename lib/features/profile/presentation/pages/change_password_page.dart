import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/input_validators.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/profile/domain/entities/profile_entities.dart';
import 'package:foodbusters/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
      ),
      body: SingleChildScrollView(
          child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.maybeWhen(
            updateProfileLoading: () {
              showLoadingDialog(context);
            },
            changePasswordFailure: (error) {
              Navigator.of(context).pop();
              scaleDialog(context, title: "Error", body: error);
            },
            changePasswordSuccess: () {
              // show success snackbar
              Navigator.of(context).pop();
              context.read<ProfileBloc>().add(const GetProfileInfo());
              showSnackBar(context,
                  message: 'Change password successfully',
                  actionLabel: "Ok", onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              }, behavior: SnackBarBehavior.floating);
              context.go(AppRoutes.landingPage);
            },
            orElse: () {},
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                customText(
                  'Create a new password at least 8 characters long.',
                  ColorManager.textDark,
                  16,
                  FontWeight.w600,
                ),
                const SizedBox(height: AppSize.s30),
                TextFormField(
                  controller: _oldPasswordController,
                  validator: InputValidators.passwordValidator,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    fillColor: ColorManager.white,
                    filled: true,
                    counterText: '',
                    contentPadding: const EdgeInsets.all(16),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorManager.textDark,
                        ),
                        borderRadius: BorderRadius.circular(AppSize.s10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1)),
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
                    hintText: "Current Password",
                    hintStyle: TextStyle(
                      color: ColorManager.hintColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.s16),
                TextFormField(
                  controller: _newPasswordController,
                  validator: InputValidators.passwordValidator,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    fillColor: ColorManager.white,
                    filled: true,
                    counterText: '',
                    contentPadding: const EdgeInsets.all(16),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorManager.textDark,
                        ),
                        borderRadius: BorderRadius.circular(AppSize.s10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1)),
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
                    hintText: "New Password",
                    hintStyle: TextStyle(
                      color: ColorManager.hintColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.s16),
                TextFormField(
                  controller: _confirmPasswordController,
                  validator: InputValidators.passwordValidator,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    fillColor: ColorManager.white,
                    filled: true,
                    counterText: '',
                    contentPadding: const EdgeInsets.all(16),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorManager.textDark,
                        ),
                        borderRadius: BorderRadius.circular(AppSize.s10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.1)),
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
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                      color: ColorManager.hintColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.s30),
                SizedBox(
                  height: AppSize.s50,
                  width: double.infinity,
                  child: AppButton(
                    labelTextSize: 16,
                    label: "Change Password",
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) return;
                      if (_newPasswordController.text !=
                          _confirmPasswordController.text) {
                        showSnackBar(
                          context,
                          message: "Password doesnot match",
                        );
                        return;
                      }
                      FocusManager.instance.primaryFocus?.unfocus();
                      context.read<ProfileBloc>().add(
                            ChangePassword(
                              changePasswordReq: ChangePasswordReq(
                                  oldPassword: _oldPasswordController.text,
                                  newPassword: _newPasswordController.text),
                            ),
                          );
                    },
                  ),
                ),
                const SizedBox(height: AppSize.s40),
                SizedBox(
                  height: AppSize.s50,
                  width: double.infinity,
                  child: AppButton(
                    labelTextSize: 14,
                    bgColor: ColorManager.white,
                    labelColor: ColorManager.skyBlue,
                    label: "Forgot password?",
                    onPressed: () {
                      context.push(AppRoutes.forgotPasswordPhonePage);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
