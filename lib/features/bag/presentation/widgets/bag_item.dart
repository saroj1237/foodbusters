import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:go_router/go_router.dart';

class BagItemWidget extends StatelessWidget {
  const BagItemWidget({
    Key? key,
    required this.bagItem,
  }) : super(key: key);
  final BagItem bagItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<BagBloc>().add(ChangeActiveBagItem(bagItem));
        context.push(AppRoutes.bagItemDetailPage, extra: bagItem);
      },
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.all(AppPadding.p16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorManager.profileBg,
          ),
          child: Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bagItem.restaurantName!,
                    // overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.w800, fontSize: 16),
                  ),
                  const SizedBox(height: AppSize.s8),
                  Text(bagItem.restaurantAddress ?? "",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 16,
                            color: ColorManager.textDark,
                          )),
                  const SizedBox(height: AppSize.s8),
                  Text(
                      bagItem.foodList!.length > 1
                          ? "(${bagItem.foodList!.length} items)"
                          : "(${bagItem.foodList!.length} item)",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 16, color: ColorManager.textDark)),
                ],
              ),
            ),
            //const Spacer(),
          ]),
        ),
        Positioned(
          bottom: AppSize.s20,
          right: 10,
          child: IconButton(
            splashColor: ColorManager.primaryLight,
            icon: SvgPicture.asset(ImageAsset.delete),
            onPressed: () {
              showConfirmDialog(context, onConfirm: () {
                context
                    .read<BagBloc>()
                    .add(RemoveBagItem(bagItem.restaurantId));
              },
                  title: "Delete cart?",
                  desctiption:
                      "All foods of this restaurant will be removed from the cart.");
            },
          ),
        ),
      ]),
    );
  }
}
