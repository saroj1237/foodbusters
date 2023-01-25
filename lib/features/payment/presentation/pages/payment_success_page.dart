import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Checkout Complete"),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppPadding.p20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.s70),
                Lottie.asset(ImageAsset.success, height: 250, repeat: false),
                Text("Thank you for your order.",
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontSize: 24)),
                const SizedBox(height: AppSize.s16),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    "Our customer service will contact you shortly to verify your order.",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: ColorManager.grey),
                  ),
                ),
                const SizedBox(height: AppSize.s28),
                SizedBox(
                  height: AppSize.s50,
                  width: double.infinity,
                  child: AppButton(
                    label: 'View Order List',
                    onPressed: () {
                      context.go(AppRoutes.landingPage);
                      context
                          .read<BottomNavCubit>()
                          .changeBottomNavIndex(2, BottomNavType.foodbusters);
                    },
                  ),
                ),
                const SizedBox(height: AppSize.s16),
                SizedBox(
                  height: AppSize.s50,
                  width: double.infinity,
                  child: BorderButton(
                    label: 'Go Back Home',
                    onPressed: () {
                      context.go(AppRoutes.landingPage);
                      context
                          .read<BottomNavCubit>()
                          .changeBottomNavIndex(0, BottomNavType.foodbusters);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
