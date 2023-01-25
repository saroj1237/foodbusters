import 'package:flutter/material.dart';

class BagPageAppBar extends StatelessWidget {
  const BagPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("My Bag"),
      // actions: [
      //   IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.search,
      //         color: ColorManager.darkGrey,
      //       ))
      // ],
    );
  }
}
