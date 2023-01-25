import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:go_router/go_router.dart';

class OrderListPageAppbar extends StatelessWidget {
  const OrderListPageAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Order History"),
      actions: [
        IconButton(
            splashColor: ColorManager.profileBg,
            onPressed: () {
              context.push(AppRoutes.searchPage);
            },
            icon: Icon(
              Icons.search,
              color: ColorManager.darkGrey,
            ))
      ],
    );
  }
}
