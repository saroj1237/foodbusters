import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/pages/bb_featured_category_widget.dart';
import 'package:foodbusters/features/bhat_bhateni/pages/bb_featured_product__widget.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/featured_item.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/featured_product/featured_product_bloc.dart';
import 'package:go_router/go_router.dart';

class BBFeaturedSection extends StatelessWidget {
  const BBFeaturedSection(
      {Key? key, required this.featuredItem, required this.isFeaturedProducts})
      : super(key: key);
  final BBFeaturedItem featuredItem;
  final bool isFeaturedProducts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText(
                featuredItem.title, ColorManager.textDark, 20, FontWeight.w800),
            TextButton(
              onPressed: () {
                if (isFeaturedProducts) {
                  context
                      .read<FeaturedProductBloc>()
                      .add(GetFeaturedProducts(featuredItem.id));
                  context.push(AppRoutes.featuredItemProductsPage);
                } else {
                  context.push(AppRoutes.bbCategoryPage);
                }
              },
              child: Text(
                "View more",
                style: TextStyle(color: ColorManager.bbPrimary),
              ),
            )
          ],
        ),
        const SizedBox(height: AppSize.s8),
        SizedBox(
          height: 150,
          child: ListView.builder(
            itemCount: isFeaturedProducts
                ? featuredItem.products.length
                : featuredItem.categories.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              if (isFeaturedProducts) {
                final product = featuredItem.products[index];
                return BBFeaturedProductWidget(product: product);
              } else {
                final category = featuredItem.categories[index];

                return BBFeaturedCategoryWidget(category: category);
              }
            },
          ),
        ),
        const SizedBox(height: AppSize.s16),
      ],
    );
  }
}
