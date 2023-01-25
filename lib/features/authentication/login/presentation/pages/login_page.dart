import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/input_validators.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/authentication/login/domain/entities/login_entity.dart';
import 'package:foodbusters/features/authentication/login/presentation/bloc/login_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/home/presentation/widgets/custom_button.dart';
import 'package:foodbusters/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:foodbusters/injection_container.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController mobileNumberController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  FocusNode focusEmail = FocusNode();
  FocusNode focusPassword = FocusNode();

  String mobileNumber = '';
  bool showPassword = false;

  Widget _buildMobileNumber() {
    return TextFormField(
        controller: mobileNumberController,
        validator: InputValidators.mobileNumberValidator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.phone,
        style: GoogleFonts.inter(color: ColorManager.textDark),
        maxLength: 10,
        focusNode: focusEmail,
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
              borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
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
            color: ColorManager.hintColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        onFieldSubmitted: (String val) {
          fieldFocusChange(context, focusEmail, focusPassword);
        });
  }

  Widget _buildPassword() {
    return TextFormField(
      controller: passwordController,
      validator: InputValidators.passwordValidator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.visiblePassword,
      obscureText: !showPassword,
      focusNode: focusPassword,
      style: GoogleFonts.inter(color: ColorManager.textDark),
      decoration: InputDecoration(
        fillColor: ColorManager.white,
        filled: true,
        contentPadding: const EdgeInsets.all(10),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.textDark,
            ),
            borderRadius: BorderRadius.circular(AppSize.s10)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
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
        hintText: "Password",
        hintStyle: TextStyle(
          color: ColorManager.hintColor,
          fontWeight: FontWeight.w500,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              showPassword = !showPassword;
            });
          },
          icon: showPassword
              ? const Icon(
                  Icons.visibility,
                  color: Colors.black45,
                )
              : const Icon(
                  Icons.visibility_off,
                  color: Colors.black54,
                ),
        ),
      ),
      onFieldSubmitted: (String val) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }

  fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    setState(() {
      currentFocus.unfocus();
      FocusScope.of(context).requestFocus(nextFocus);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sl.get<GlobalKey<ScaffoldState>>(),
      backgroundColor: ColorManager.white,
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is Loading) {
            // showLoadingDialog(context);
          } else if (state is InitLoginFailure) {
            // Navigator.of(context).pop();

            showLoginDialog(context, "Login Error!", state.error);
            // scaleDialog(context, title: "Login failed", body: state.error);
          } else if (state is InitLoginSuccess) {
            context.read<AuthCubit>().checkAuthState();
            context.read<ProfileBloc>().add(const GetProfileInfo());
            showSnackBar(
              context,
              message: "Welcome",
              behavior: SnackBarBehavior.floating,
              bgColor: ColorManager.success,
            );
            context.go(AppRoutes.landingPage);
          }
        },
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p45),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/logo.svg',
                    ),
                    const SizedBox(height: AppSize.s20),
                    customText(
                        "Login", ColorManager.textDark, 36, FontWeight.w800),
                    const SizedBox(height: AppSize.s40),
                    _buildMobileNumber(),
                    const SizedBox(height: AppSize.s10),
                    _buildPassword(),
                    const SizedBox(height: AppSize.s32),
                    GestureDetector(
                      onTap: () {
                        context.push(AppRoutes.forgotPasswordPhonePage);
                      },
                      child: customText("Forgot Password ?",
                          ColorManager.skyBlue, 14, FontWeight.w500),
                    ),
                    const SizedBox(height: AppSize.s32),
                    GestureDetector(
                      onTap: () {
                        final loginState =
                            BlocProvider.of<LoginBloc>(context).state;
                        if (loginState is Loading) {
                          return;
                        }
                        if (!_formKey.currentState!.validate()) return;
                        _formKey.currentState!.save();
                        FocusManager.instance.primaryFocus?.unfocus();
                        context.read<LoginBloc>().add(
                              InitLogin(
                                LoginRequest(
                                    phoneNumber: mobileNumberController.text,
                                    password: passwordController.text),
                              ),
                            );
                      },
                      child: CustomBottom(
                          text: "Login",
                          textColor: ColorManager.textDark,
                          backgroundColor: ColorManager.primary,
                          fontSize: 18,
                          padding: 16,
                          radius: 10),
                    ),
                    const SizedBox(height: AppSize.s30),
                    customText("Don't have an account ?", ColorManager.textDark,
                        16, FontWeight.w500),
                    const SizedBox(height: AppSize.s30),
                    GestureDetector(
                      onTap: () {
                        context.push(AppRoutes.signupPhonePage);
                      },
                      child: CustomBottom(
                          text: "Sign Up",
                          textColor: ColorManager.textDark,
                          backgroundColor: ColorManager.primaryLight,
                          fontSize: 18,
                          padding: 16,
                          radius: 10),
                    ),
                    const SizedBox(height: AppSize.s40),
                    Center(
                      child: TextButton(
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(color: ColorManager.skyBlue),
                          ),
                        ),
                        onPressed: () {
                          context.go(AppRoutes.landingPage);
                        },
                        child: customText("Skip for now", ColorManager.skyBlue,
                            14, FontWeight.w500),
                      ),
                    )
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
