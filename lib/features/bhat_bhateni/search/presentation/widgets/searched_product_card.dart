import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BBSearchedProductCard extends StatelessWidget {
  const BBSearchedProductCard({Key? key, required this.product})
      : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocListener<BagBloc, BagState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            addTobagSuccess: () {
              showSnackBar(context,
                  message: "Added to cart",
                  behavior: SnackBarBehavior.floating,
                  actionLabel: "Go to cart", onPressed: () {
                context.push(AppRoutes.bagPage);
              });
            });
      },
      child: StatefulBuilder(
        builder: (context, setState) => Container(
          padding: const EdgeInsets.symmetric(vertical: AppSize.s16),
          margin: const EdgeInsets.only(bottom: AppSize.s20),
          child: InkWell(
            onTap: () {
              context.push(AppRoutes.productDetailPage, extra: product.id);
            },
            splashColor: ColorManager.profileBg.withOpacity(0.5),
            overlayColor:
                MaterialStateProperty.all<Color>(ColorManager.profileBg),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CustomCachedImage(
                    imageUrl:
                        product.images != null && product.images!.isNotEmpty
                            ? product.images![0]
                            : '',
                    height: AppSize.s60,
                    width: AppSize.s60,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: AppSize.s10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: ColorManager.textDark),
                      ),
                      const SizedBox(height: AppSize.s8),
                      Row(
                        children: [
                          customText("Rs. ${product.price}",
                              ColorManager.textDark, 16, FontWeight.w800),
                          const SizedBox(width: AppSize.s4),
                          if (product.discountPrice != null)
                            Text(
                              "Rs. ${product.discountPrice}",
                              style: GoogleFonts.lato(
                                color: ColorManager.textGrey,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                        ],
                      ),
                    ],
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
