import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/input_validators.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/authentication/signup/domain/entities/signup_entities.dart';
import 'package:foodbusters/features/authentication/signup/presentation/bloc/signup_bloc.dart';
import 'package:foodbusters/features/home/presentation/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPhonePage extends StatefulWidget {
  const SignUpPhonePage({Key? key}) : super(key: key);

  @override
  State<SignUpPhonePage> createState() => _SignUpPhonePageState();
}

class _SignUpPhonePageState extends State<SignUpPhonePage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controlleremail = TextEditingController();
  TextEditingController controllerFullName = TextEditingController();
  TextEditingController controllerConfirmPassword = TextEditingController();

  FocusNode focusMobile = FocusNode();
  FocusNode focusPassword = FocusNode();
  FocusNode focusFullName = FocusNode();
  FocusNode focusConfirmPassword = FocusNode();

  bool passwordVisible = true;
  bool confirmPasswordVisible = true;

  @override
  void dispose() {
    mobileNumberController.dispose();
    controllerPassword.dispose();
    controllerFullName.dispose();
    controllerConfirmPassword.dispose();
    super.dispose();
  }

  Widget _buildMobileNumber() {
    return TextFormField(
        controller: mobileNumberController,
        validator: InputValidators.mobileNumberValidator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.phone,
        maxLength: 10,
        focusNode: focusMobile,
        style: GoogleFonts.inter(color: ColorManager.textDark),
        decoration: InputDecoration(
          counterText: '',
          contentPadding: const EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.textDark,
              ),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.1),
              ),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.errorOpacity50,
              ),
              borderRadius: BorderRadius.circular(10)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.errorOpacity50,
              ),
              borderRadius: BorderRadius.circular(10)),
          hintText: "Mobile Number",
          hintStyle: TextStyle(
            color: ColorManager.hintColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        onFieldSubmitted: (String val) {
          fieldFocusChange(context, focusMobile, focusFullName);
        });
  }

  Widget _buildFullName() {
    return TextFormField(
        controller: controllerFullName,
        validator: InputValidators.commonValidation,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.text,
        maxLength: 64,
        focusNode: focusFullName,
        style: GoogleFonts.inter(color: ColorManager.textDark),
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: const EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.textDark,
              ),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.1),
              ),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.errorOpacity50,
              ),
              borderRadius: BorderRadius.circular(10)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.errorOpacity50,
              ),
              borderRadius: BorderRadius.circular(10)),
          hintText: "Full Name",
          hintStyle: TextStyle(
            color: ColorManager.hintColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        onFieldSubmitted: (String val) {
          fieldFocusChange(context, focusFullName, focusPassword);
        });
  }

  Widget _buildPassword() {
    return TextFormField(
        controller: controllerPassword,
        validator: InputValidators.passwordValidator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.emailAddress,
        obscureText: passwordVisible,
        focusNode: focusPassword,
        style: GoogleFonts.inter(color: ColorManager.textDark),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.textDark,
              ),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.12),
              ),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.errorOpacity50),
              borderRadius: BorderRadius.circular(10)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.errorOpacity50,
              ),
              borderRadius: BorderRadius.circular(10)),
          hintText: "Password",
          hintStyle: TextStyle(
            color: ColorManager.hintColor,
            fontWeight: FontWeight.w500,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordVisible = !passwordVisible;
              });
            },
            icon: passwordVisible
                ? const Icon(
                    Icons.visibility_off,
                    color: Colors.black45,
                  )
                : const Icon(
                    Icons.visibility,
                    color: Colors.black54,
                  ),
          ),
        ),
        onFieldSubmitted: (String val) {
          fieldFocusChange(context, focusPassword, focusConfirmPassword);
        });
  }

  Widget _buildConfirmPassword() {
    return TextFormField(
        controller: controllerConfirmPassword,
        validator: InputValidators.passwordValidator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.visiblePassword,
        obscureText: confirmPasswordVisible,
        focusNode: focusConfirmPassword,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.textDark,
              ),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.12),
              ),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.errorOpacity50,
              ),
              borderRadius: BorderRadius.circular(10)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.errorOpacity50,
              ),
              borderRadius: BorderRadius.circular(10)),
          hintText: "Confirm Password",
          hintStyle: TextStyle(
            color: ColorManager.hintColor,
            fontWeight: FontWeight.w500,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                confirmPasswordVisible = !confirmPasswordVisible;
              });
            },
            icon: confirmPasswordVisible
                ? const Icon(
                    Icons.visibility_off,
                    color: Colors.black45,
                  )
                : const Icon(
                    Icons.visibility,
                    color: Colors.black54,
                  ),
          ),
        ));
  }

  fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      resizeToAvoidBottomInset: true,
      body: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is GetOtpLoading) {
            showLoadingDialog(context);
          } else if (state is GetOtpFailure) {
            Navigator.of(context).pop();
            showSnackBar(context, message: state.error);
          } else if (state is GetOtpSuccess) {
            final signupRequest = SignUpRequest(
                phoneNumber: mobileNumberController.text,
                password: controllerPassword.text,
                fullName: controllerFullName.text);
            Navigator.of(context).pop();
            GoRouter.of(context)
                .push(AppRoutes.signupOtpPage, extra: signupRequest);
          } else if (state is AlreadyExistButOtpNotVerified) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content:
                    Text("User already exist. Please verify while login")));
            context.go(AppRoutes.loginPage);
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
                  children: [
                    SvgPicture.asset(
                      ImageAsset.logoSvg,
                    ),
                    const SizedBox(height: AppSize.s20),
                    customText(
                        "Sign Up", ColorManager.textDark, 36, FontWeight.w800),
                    const SizedBox(height: AppSize.s40),
                    _buildMobileNumber(),
                    const SizedBox(height: AppSize.s10),
                    _buildFullName(),
                    const SizedBox(height: AppSize.s10),
                    _buildPassword(),
                    const SizedBox(height: AppSize.s10),
                    _buildConfirmPassword(),
                    const SizedBox(height: AppSize.s20),

                    GestureDetector(
                      onTap: () {
                        if (!_formKey.currentState!.validate()) return;
                        FocusManager.instance.primaryFocus?.unfocus();
                        if (controllerPassword.text !=
                            controllerConfirmPassword.text) {
                          showSnackBar(context,
                              message: "Password doesnot match");
                          return;
                        }

                        context.read<SignupBloc>().add(
                              GetSignupOtp(
                                SignUpRequest(
                                  phoneNumber: mobileNumberController.text,
                                  password: controllerPassword.text,
                                  fullName: controllerFullName.text,
                                ),
                              ),
                            );
                      },
                      child: CustomBottom(
                          text: "Get OTP",
                          textColor: ColorManager.textDark,
                          backgroundColor: ColorManager.primary,
                          fontSize: 18,
                          padding: 16,
                          radius: 10),
                    ),

                    // SizedBox(
                    //     width: double.maxFinite,
                    //     height: AppSize.s55,
                    //     child: AppButton(
                    //       label: "Get OTP",
                    //       onPressed: () {
                    //         if (!_formKey.currentState!.validate()) return;
                    //         FocusManager.instance.primaryFocus?.unfocus();
                    //         if (controllerPassword.text !=
                    //             controllerConfirmPassword.text) {
                    //           showSnackBar(context,
                    //               message: "Password doesnot match");
                    //           return;
                    //         }

                    //         context
                    //             .read<SignupBloc>()
                    //             .add(GetSignupOtp(SignUpRequest(
                    //               phoneNumber: mobileNumberController.text,
                    //               password: controllerPassword.text,
                    //             )));
                    //       },
                    //     )),
                    const SizedBox(height: AppSize.s30),
                    customText("Already have an account ?",
                        ColorManager.textDark, 15, FontWeight.w500),
                    const SizedBox(height: AppSize.s30),

                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                      child: CustomBottom(
                          text: "Login",
                          textColor: ColorManager.textDark,
                          backgroundColor: ColorManager.primaryLight,
                          fontSize: 18,
                          padding: 16,
                          radius: 10),
                    ),

                    // SizedBox(
                    //     width: double.maxFinite,
                    //     height: AppSize.s50,
                    //     child: AppButton(
                    //       bgColor: ColorManager.primaryLight,
                    //       label: "Login",
                    //       onPressed: () {
                    //         GoRouter.of(context).pop();
                    //       },
                    //     )),
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
