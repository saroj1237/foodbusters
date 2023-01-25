import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/bloc/cart_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/featured_product/featured_product_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/widgets/product_card.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/resources/resources.dart';

class FeaturedItemProductsPage extends StatefulWidget {
  const FeaturedItemProductsPage({Key? key}) : super(key: key);

  @override
  State<FeaturedItemProductsPage> createState() =>
      _FeaturedItemProductsPageState();
}

class _FeaturedItemProductsPageState extends State<FeaturedItemProductsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.bbPrimary,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: ColorManager.white,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          "Products",
          style: TextStyle(color: ColorManager.white),
        ),
      ),
      body: SingleChildScrollView(
        child: BlocListener<CartBloc, CartState>(
          listener: (context, state) {
            state.maybeWhen(
              cartError: (error) {
                showSnackBar(context,
                    message: error, behavior: SnackBarBehavior.floating);
              },
              addToCartSuccess: () {
                showSnackBar(
                  context,
                  message: "Added to Cart",
                  behavior: SnackBarBehavior.floating,
                  actionLabel: "View cart",
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    context.push(AppRoutes.cartPage);
                  },
                );
              },
              orElse: () {},
            );
          },
          child: BlocBuilder<FeaturedProductBloc, FeaturedProductState>(
              builder: (context, state) {
            return state.maybeWhen(
              featuredProductsLoading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              featuredProductsError: (error) {
                return Center(
                  child: Text(error),
                );
              },
              featuredProductsLoaded: (products) {
                return GridView.builder(
                    shrinkWrap: true,
                    itemCount: products.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3 / 4,
                      crossAxisCount: 2,
                      mainAxisSpacing: AppSize.s10,
                      crossAxisSpacing: AppSize.s10,
                    ),
                    padding: const EdgeInsets.all(AppPadding.p16),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return ProductCard(product: product);
                    });
              },
              orElse: () {
                return const SizedBox.shrink();
              },
            );
          }),
        ),
      ),
    );
  }
}
