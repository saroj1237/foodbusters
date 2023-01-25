import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:go_router/go_router.dart';

class BBFeaturedProductWidget extends StatelessWidget {
  const BBFeaturedProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.productDetailPage, extra: product.id);
      },
      child: Container(
        width: 140,
        height: double.maxFinite,
        margin: const EdgeInsets.only(right: AppMargin.m10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: CustomCachedImage(
                imageUrl: product.images![0],
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText("Rs. ${product.price}", ColorManager.textDark,
                        14, FontWeight.w700),
                    customText(product.name * 3, ColorManager.textGrey, 12,
                        FontWeight.w400,
                        maxLines: 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
