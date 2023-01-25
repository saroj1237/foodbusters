import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/bloc/cart_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/entities/bb_product_entity.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:go_router/go_router.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.productDetailPage, extra: product.id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: CustomCachedImage(
                    imageUrl: product.images![0],
                    // fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Rs.${product.price}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                            // Spacer(),
                            const SizedBox(width: 4),

                            // Row(
                            //   children: [
                            //     Icon(
                            //       Icons.star,
                            //       color: ColorManager.primary,
                            //     ),
                            //     Text(
                            //       '4.5',
                            //       style: Theme.of(context)
                            //           .textTheme
                            //           .bodyText2
                            //           ?.copyWith(fontWeight: FontWeight.normal),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                        const SizedBox(height: 3),
                        Text(
                          product.name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 10,
              right: 10,
              child: InkWell(
                onTap: () {
                  final authCubit = BlocProvider.of<AuthCubit>(context);
                  if (authCubit.state is Authenticated) {
                    context.read<CartBloc>().add(AddToCart(
                        req: AddToCartReq(productId: product.id, quantity: 1)));
                    debugPrint("Authenticated");
                  } else {
                    debugPrint("UnAuthenticated");
                    context.push(AppRoutes.loginPage);
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: AppSize.s1_5,
                        color: ColorManager.lightGrey,
                      )),
                  child: const Icon(
                    Icons.add,
                    size: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
