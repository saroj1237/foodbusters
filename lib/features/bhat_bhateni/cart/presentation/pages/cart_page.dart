import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/authentication/login/presentation/pages/login_page.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/bloc/cart_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:go_router/go_router.dart';

import '../widgets/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(const GetCart());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is Authenticated) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: ColorManager.bbPrimary,
              titleTextStyle:
                  Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                        color: ColorManager.white,
                      ),
              title: const Text("Cart"),
              leading: const SizedBox.shrink(),
            ),
            body: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return state.maybeWhen(
                  cartLoading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  cartError: (error) {
                    return Center(child: Text(error));
                  },
                  getCartSuccess: (response) {
                    return response.items != null && response.items!.isNotEmpty
                        ? SingleChildScrollView(
                            child: ListView.builder(
                              itemCount: response.items!.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                final cartItem = response.items![index];
                                return CartItemWidget(cartItem: cartItem);
                              },
                            ),
                          )
                        : Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                    child: SvgPicture.asset(
                                        ImageAsset.emptyItems)),
                                const SizedBox(
                                  height: 16,
                                ),
                                customText("No items in cart",
                                    ColorManager.textDark, 20, FontWeight.w800),
                              ],
                            ),
                          );
                  },
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                );
              },
            ),
            bottomSheet: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return state.maybeWhen(
                  getCartSuccess: (response) {
                    return response.items != null && response.items!.isNotEmpty
                        ? Container(
                            color: ColorManager.white,
                            padding: const EdgeInsets.all(AppPadding.p16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Rs. ${response.totalPrice?.toStringAsFixed(2)}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4
                                          ?.copyWith(
                                              color: ColorManager.textDark),
                                    ),
                                    const SizedBox(width: AppSize.s16),
                                    SizedBox(
                                      height: AppSize.s55,
                                      width: AppSize.s130,
                                      child: AppButton(
                                        onPressed: () {
                                          context.push(AppRoutes.bbCheckoutPage,
                                              extra: response);
                                        },
                                        label: "Proceed",
                                        labelChild: Icon(
                                          Icons.arrow_forward,
                                          color: ColorManager.white,
                                        ),
                                        showboth: true,
                                        labelColor: ColorManager.white,
                                        bgColor: ColorManager.bbPrimary,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: AppSize.s12)
                              ],
                            ),
                          )
                        : const SizedBox.shrink();
                  },
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                );
              },
            ),
          );
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
