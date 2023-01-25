import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/bloc/connectivity/connectivity_cubit.dart';
import 'package:lottie/lottie.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: double.infinity),
        Lottie.asset(ImageAsset.noInternet, height: 300),
        const SizedBox(height: AppSize.s30),
        Text(
          "Oops!",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: AppSize.s10),
        Text(
          "There is no internet connection",
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: AppSize.s10),
        Text(
          "Please check your internet connection checker",
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: AppSize.s20),
        GestureDetector(
          onTap: () {
            context.read<ConnectivityCubit>().checkConnection();
          },
          child: Container(
            height: AppSize.s55,
            width: AppSize.s280,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(
                    width: AppSize.s1_5, color: ColorManager.lightGrey),
                borderRadius: BorderRadius.circular(
                  AppSize.s30,
                )),
            child: Text(
              "Refresh",
              style:
                  Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 20),
            ),
          ),
        )
      ],
    ));
  }
}
