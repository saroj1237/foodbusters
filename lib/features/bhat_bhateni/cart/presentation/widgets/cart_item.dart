import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/bloc/cart_bloc.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  Timer? _debounce;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          // color: ColorManager.errorOpacity50,
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p16, vertical: AppPadding.p20),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: ColorManager.lightGrey),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              CustomCachedImage(
                imageUrl: widget.cartItem.productImage![0],
                height: AppSize.s60,
                width: AppSize.s60,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: AppSize.s20),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            widget.cartItem.name,
                            style: Theme.of(context).textTheme.headline4,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            context
                                .read<CartBloc>()
                                .add(DeleteCartItem(widget.cartItem));
                          },
                          child: SvgPicture.asset(ImageAsset.delete),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.s10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Rs.${widget.cartItem.totalPrice.toStringAsFixed(2)}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                      color: ColorManager.textDark,
                                      fontWeight: FontWeightManager.medium),
                            ),
                            Text(
                              "${widget.cartItem.unitPrice} per item",
                              style: Theme.of(context).textTheme.bodyText1,
                            )
                          ],
                        ),
                        const SizedBox(width: AppSize.s20),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorManager.lightGrey),
                              borderRadius:
                                  BorderRadius.circular(AppSize.s100)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (_debounce?.isActive ?? false) {
                                    _debounce?.cancel();
                                  }
                                  _debounce = Timer(
                                      const Duration(milliseconds: 500), () {
                                    if (widget.cartItem.quantity == 1) {
                                      return;
                                    }
                                    context.read<CartBloc>().add(UpdateCart(
                                        req: AddToCartReq(
                                            productId: widget.cartItem.id,
                                            quantity: -1)));
                                  });
                                },
                                child: Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: ColorManager.lightGrey,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.remove,
                                        color: widget.cartItem.quantity <= 1
                                            ? ColorManager.grey
                                            : null,
                                        size: 20)),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "${widget.cartItem.quantity}",
                                style: const TextStyle(
                                    fontWeight: FontWeightManager.bold),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  if (_debounce?.isActive ?? false) {
                                    _debounce?.cancel();
                                  }
                                  _debounce = Timer(
                                      const Duration(milliseconds: 500), () {
                                    context.read<CartBloc>().add(UpdateCart(
                                        req: AddToCartReq(
                                            productId: widget.cartItem.id,
                                            quantity: 1)));
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(5),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: ColorManager.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.add,
                                      color: ColorManager.white, size: 20),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

 // Positioned(
        //   top: AppSize.s16,
        //   right: AppSize.s16,
        //   child: InkWell(
        //     onTap: () {
        //       context.read<CartBloc>().add(DeleteCartItem(widget.cartItem));
        //     },
        //     child: SvgPicture.asset(ImageAsset.delete),
        //   ),
        // )