import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/mathmatical_operations.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:go_router/go_router.dart';

class MenuItemWidget extends StatefulWidget {
  const MenuItemWidget({Key? key, required this.menu}) : super(key: key);
  final Menu menu;
  @override
  State<MenuItemWidget> createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: AppPadding.p16,
            top: AppPadding.p20,
          ),
          child: Text(
            widget.menu.title,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        const SizedBox(height: AppSize.s10),
        for (Food i in widget.menu.foods) ...[
          GestureDetector(
            onTap: () {
              showFoodModalSheet(context, i, setState);
            },
            child: Container(
              color: ColorManager.white,
              padding: const EdgeInsets.only(
                  left: AppPadding.p16,
                  right: AppPadding.p16,
                  top: AppPadding.p16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AppSize.s8),
                        Text(
                          i.name ?? '',
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.headline1?.copyWith(
                                    fontSize: 16,
                                  ),
                        ),
                        const SizedBox(height: AppSize.s8),

                        customText(i.detail ?? "Per Price", ColorManager.grey2,
                            12, FontWeight.w500),
                        const SizedBox(height: AppSize.s8),
                        Row(children: [
                          Text(
                            "Rs. ${i.discountedPrice?.toStringAsFixed(2)}",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(
                                    fontSize: 16.0,
                                    color: ColorManager.textDark),
                          ),
                          const SizedBox(
                            width: AppSize.s8,
                          ),
                          Text(
                            (i.discount! > 0)
                                ? "Rs. ${i.price?.toStringAsFixed(2)}"
                                : "",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                    color: ColorManager.grey2),
                          ),
                        ]),
                        const SizedBox(height: AppSize.s8),
                        Text(
                          (i.discount! > 0)
                              ? "${calculatePercentage(i.price!.toDouble(), i.discountedPrice!.toDouble()).toStringAsFixed(2)} % Off"
                              : "",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  color: ColorManager.discountPercentText),
                        ),
                        // Text(
                        //   "Per Piece",
                        //   style: Theme.of(context).textTheme.subtitle1,
                        // ),
                        // const SizedBox(height: AppSize.s8),
                        // Text(
                        //   "Rs. ${i.price}",
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .headline1
                        //       ?.copyWith(fontSize: 16.0),
                        // ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppSize.s10),
                        child: SizedBox(
                            height: AppSize.s90,
                            width: AppSize.s130,
                            child:
                                (i.foodImage != null && i.foodImage!.isNotEmpty)
                                    ? CustomCachedImage(
                                        imageUrl: i.foodImage![0],
                                        fit: BoxFit.cover,
                                      )
                                    // : const CustomCachedImage(
                                    //     imageUrl: "",
                                    //     fit: BoxFit.cover,
                                    //   )
                                    : Container()),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -20),
                        child: StatefulBuilder(
                          builder: (context, setState) => GestureDetector(
                            onTap: () {
                              final authBloc = context.read<AuthCubit>();
                              if (authBloc.state is Authenticated) {
                                AddTobagRequest requestModel =
                                    const AddTobagRequest(quantity: 1);
                                context.read<BagBloc>().add(
                                    AddItemTobag(requestModel, i.id, null));
                              } else {
                                context.push(AppRoutes.loginPage);
                              }

                              // showFoodModalSheet(context, i, setState);
                            },
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppPadding.p14,
                                    vertical: AppPadding.p10),
                                decoration: BoxDecoration(
                                  color: ColorManager.white,
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s26),
                                  border: Border.all(
                                    color: ColorManager.lightGrey,
                                  ),
                                ),
                                child: const Text("+ ADD")),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Divider(),
          )
        ]
      ],
    );
  }
}
