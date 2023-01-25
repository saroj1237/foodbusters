import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../features/bag/domain/entities/bag_entity.dart';
import '../../features/restaurant/restaurant/domain/entities/entity.dart';

// ====================LOADING DIALOG==================
void showLoadingDialog(BuildContext context, {String message = 'Loading...'}) {
  SchedulerBinding.instance
      .addPostFrameCallback((_) => _buildLoadingDialog(context, message));
}

_buildLoadingDialog(BuildContext context, String message) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p16, vertical: AppPadding.p20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Center(
                        child: SizedBox(
                            height: AppSize.s20,
                            width: AppSize.s20,
                            child: CircularProgressIndicator(
                              strokeWidth: 3.5,
                              color: ColorManager.grey,
                            ))),
                    const SizedBox(width: AppSize.s16),
                    Text(
                      message,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: ColorManager.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      });
}

// ==================== CONFIRM DIALOG =========================
showConfirmDialog(
  BuildContext context, {
  String title = '',
  String desctiption = '',
  required Function() onConfirm,
}) {
  SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)), //this right here
            child: SizedBox(
              width: 320.0,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Wrap(
                  direction: Axis.vertical,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    customTextOverflow(title, ColorManager.textDark, 20,
                        FontWeightManager.bold, TextOverflow.ellipsis),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 250.0,
                      child: customTextOverflow(
                          desctiption,
                          ColorManager.textDark,
                          14,
                          FontWeightManager.medium,
                          TextOverflow.ellipsis),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            onConfirm();
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                                color: ColorManager.profileBg,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            padding: const EdgeInsets.all(16),
                            child: Text("Yes",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: ColorManager.textDark)),
                          ),
                        ),
                        const SizedBox(
                          width: 32,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context, false),
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                                color: ColorManager.black,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            padding: const EdgeInsets.all(16),
                            child: Text("Cancel",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: ColorManager.white)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });

    // showDialog(
    //   context: context,
    //   builder: (context) => AlertDialog(
    //     title: Text(
    //       title,
    //       style: Theme.of(context).textTheme.headline5?.copyWith(
    //             fontSize: FontSize.s18,
    //             fontWeight: FontWeightManager.medium,
    //           ),
    //     ),
    //     content: Text(
    //       desctiption,
    //       style: Theme.of(context).textTheme.headline6,
    //     ),
    //     actions: [
    //       TextButton(
    //         onPressed: () {
    //           Navigator.of(context).pop();
    //         },
    //         child: const Text("Cancel"),
    //       ),
    //       TextButton(
    //         onPressed: () {
    //           onConfirm();
    //           Navigator.of(context).pop();
    //         },
    //         child: const Text("Confirm"),
    //       ),
    //     ],
    //   ),
    // );
  });
}

// =============== APP EXIT CONFIRMATION DIALOG =====================
Future<bool?> showExitDialog(BuildContext context,
    {String title = "Exit App?",
    String body = "Are you sure you want to exit?"}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)), //this right here
          child: SizedBox(
            width: 320.0,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  customTextOverflow(title, ColorManager.textDark, 20,
                      FontWeightManager.bold, TextOverflow.ellipsis),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 250.0,
                    child: customTextOverflow(body, ColorManager.textDark, 14,
                        FontWeightManager.medium, TextOverflow.ellipsis),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          SystemNavigator.pop();
                        },
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: ColorManager.profileBg,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.all(16),
                          child: Text("Yes",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: ColorManager.textDark)),
                        ),
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context, false),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: ColorManager.black,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.all(16),
                          child: Text("Cancel",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                  color: ColorManager.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });

  // // final value = showDialog<bool>(
  // //   context: context,
  // //   builder: (context) => AlertDialog(
  // //     title: Text(
  // //       title,
  // //       style: Theme.of(context).textTheme.headline4,
  // //     ),
  // //     content: Text(
  // //       body,
  // //       style: Theme.of(context).textTheme.headline5,
  // //     ),
  // //     actions: [
  // //       TextButton(
  // //         onPressed: () {
  // //           Navigator.pop(context, false);
  // //         },
  // //         child: const Text("CANCEL"),
  // //       ),
  // //       TextButton(
  // //         onPressed: () {
  // //           Navigator.pop(context, true);
  // //         },
  // //         child: const Text("YES"),
  // //       ),
  // //     ],
  // //   ),
  // // );
  // return value;
}

// ================== ANIMATED DIALOG ===========================

void scaleDialog(BuildContext context,
    {String title = "Title",
    String body = 'body',
    void Function()? onPressed}) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    pageBuilder: (ctx, a1, a2) {
      return Container();
    },
    transitionBuilder: (ctx, a1, a2, child) {
      var curve = Curves.easeInOut.transform(a1.value);
      return Transform.scale(
        scale: curve,
        child: _buildScaleDialog(ctx, title, body),
      );
    },
    transitionDuration: const Duration(milliseconds: 100),
  );
}

Widget _buildScaleDialog(BuildContext context, String title, String body,
    {void Function()? onPressed}) {
  return AlertDialog(
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline4,
    ),
    content: Text(
      body,
      style: Theme.of(context).textTheme.headline5,
    ),
    actions: <Widget>[
      TextButton(
          onPressed: onPressed ??
              () {
                Navigator.of(context).pop();
              },
          child: Text(
            "OK",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeightManager.bold,
                color: ColorManager.skyBlue),
          ))
    ],
  );
}

// ====================== SUCCESS DIALOG ===========================
void showSuccessDialog(BuildContext context,
    {String title = 'Success', String body = '', void Function()? onPressed}) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(body),
          actions: <Widget>[
            TextButton(
              onPressed: onPressed ??
                  () {
                    Navigator.pop(context);
                  },
              child: const Text('Ok'),
            ),
          ],
        );
      });
}

// =================== BOTTOM SNACK BAR =============================
void showSnackBar(BuildContext context,
    {String message = 'Ok',
    SnackBarBehavior behavior = SnackBarBehavior.floating,
    Color? bgColor,
    String? actionLabel,
    void Function()? onPressed}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: bgColor,
      content: Text(message),
      behavior: behavior,
      action: SnackBarAction(
        label: actionLabel ?? '',
        onPressed: onPressed ?? () {},
      ),
    ),
  );
}

// ================= BOTTOM MODAL SHEET FOR FOOD DETAIL =================
void showFoodModalSheet(
    BuildContext context, Food food, Function(void Function()) setState) {
  int quantity = 1;
  num price = food.price! * quantity;
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return makeDismissible(
        context,
        child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) =>
              DraggableScrollableSheet(
            initialChildSize: 0.5,
            maxChildSize: 0.7,
            minChildSize: 0.5,
            builder: (_, controller) => StatefulBuilder(
              builder: (BuildContext context, setState) => ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppSize.s10),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(AppSize.s10),
                      )),
                  child: ListView(
                    controller: controller,
                    shrinkWrap: false,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 16,
                          left: 16,
                          right: 5,
                        ),
                        height: 250,
                        child: food.foodImage!.isNotEmpty
                            ? ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: food.foodImage!.length,
                                primary: true,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: food.foodImage!.length > 1
                                        ? const EdgeInsets.only(
                                            right: 16,
                                          )
                                        : const EdgeInsets.only(right: 4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: CustomCachedImage(
                                        imageUrl: food.foodImage![index],
                                        width: food.foodImage!.length > 1
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.2
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.09,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              )
                            : Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: CustomCachedImage(
                                      imageUrl: "",
                                      width: food.foodImage!.length > 1
                                          ? MediaQuery.of(context).size.width /
                                              1.2
                                          : MediaQuery.of(context).size.width /
                                              1.09,
                                      height: 50),
                                ),
                              ),
                      ),
                      const SizedBox(height: AppSize.s10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: Text(
                          "${food.name}",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      const SizedBox(height: AppSize.s10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: customText("Per Price", ColorManager.grey2, 12,
                            FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.s8),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: Text(
                          "Rs. ${food.discountedPrice}",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      if (food.price != food.discountedPrice)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p16),
                          child: Text(
                            "Rs. ${food.price}",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 16),
                          ),
                        ),
                      // const SizedBox(height: AppSize.s20),
                      if (food.detail != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p16),
                          child: Text(
                            food.detail ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontSize: 14.0, color: ColorManager.grey),
                          ),
                        ),
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Divider(),
                      ),
                      // const SizedBox(height: AppSize.s20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p10),
                              height: AppSize.s50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: ColorManager.black,
                                ),
                                borderRadius:
                                    BorderRadius.circular(AppSize.s28),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (quantity != 1) {
                                        setState(() {
                                          quantity = quantity - 1;
                                          price = food.price! * quantity;
                                        });
                                      }
                                      return;
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                  Text(
                                    "$quantity",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          fontSize: FontSize.s14,
                                          fontWeight: FontWeightManager.bold,
                                        ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        quantity = quantity + 1;
                                        price = food.price! * quantity;
                                      });
                                    },
                                    icon: const Icon(Icons.add),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: AppSize.s30),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  final AuthCubit authCubit =
                                      BlocProvider.of<AuthCubit>(context);
                                  if (authCubit.state is Authenticated) {
                                    context.read<BagBloc>().add(
                                          AddItemTobag(
                                              AddTobagRequest(
                                                  quantity: quantity),
                                              food.id,
                                              null),
                                        );
                                    Navigator.of(context).pop();
                                  } else {
                                    context.push(AppRoutes.loginPage);
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppPadding.p10),
                                  alignment: Alignment.center,
                                  height: AppSize.s50,
                                  decoration: BoxDecoration(
                                    color: ColorManager.black,
                                    border: Border.all(
                                      color: ColorManager.black,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s28),
                                  ),
                                  child: Text(
                                    "+  Add Item Rs. $price",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          color: ColorManager.white,
                                          fontSize: FontSize.s14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

void showFoodModalSheet2(
    BuildContext context, Food food, Function(void Function()) setState) {
  int quantity = 1;
  num price = food.price! * quantity;
  showModalBottomSheet(
    isScrollControlled: false,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return makeDismissible(context,
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) =>
                StatefulBuilder(
              builder: (BuildContext context, setState) => ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(AppSize.s10),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(AppSize.s10),
                      )),
                  child: ListView(
                    // controller: controller,
                    shrinkWrap: false,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 16,
                          left: 16,
                          right: 5,
                        ),
                        height: 250,
                        child: food.foodImage!.isNotEmpty
                            ? ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: food.foodImage!.length,
                                primary: true,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: food.foodImage!.length > 1
                                        ? const EdgeInsets.only(
                                            right: 16,
                                          )
                                        : const EdgeInsets.only(right: 4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: CustomCachedImage(
                                        imageUrl: food.foodImage![index],
                                        width: food.foodImage!.length > 1
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.2
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.09,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              )
                            : Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: CustomCachedImage(
                                      imageUrl: "",
                                      width: food.foodImage!.length > 1
                                          ? MediaQuery.of(context).size.width /
                                              1.2
                                          : MediaQuery.of(context).size.width /
                                              1.09,
                                      height: 50),
                                ),
                              ),
                      ),
                      const SizedBox(height: AppSize.s10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: Text(
                          "${food.name}" * 1000,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      const SizedBox(height: AppSize.s10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: customText("Per Price", ColorManager.grey2, 12,
                            FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.s8),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: Text(
                          "Rs. ${food.discountedPrice}",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      if (food.price != food.discountedPrice)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p16),
                          child: Text(
                            "Rs. ${food.price}",
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 16),
                          ),
                        ),
                      // const SizedBox(height: AppSize.s20),
                      if (food.detail != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p16),
                          child: Text(
                            food.detail ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontSize: 14.0, color: ColorManager.grey),
                          ),
                        ),
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Divider(),
                      ),
                      // const SizedBox(height: AppSize.s20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p10),
                              height: AppSize.s50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: ColorManager.black,
                                ),
                                borderRadius:
                                    BorderRadius.circular(AppSize.s28),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (quantity != 1) {
                                        setState(() {
                                          quantity = quantity - 1;
                                          price = food.price! * quantity;
                                        });
                                      }
                                      return;
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                  Text(
                                    "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          fontSize: FontSize.s14,
                                          fontWeight: FontWeightManager.bold,
                                        ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        quantity = quantity + 1;
                                        price = food.price! * quantity;
                                      });
                                    },
                                    icon: const Icon(Icons.add),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(width: AppSize.s30),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  final AuthCubit authCubit =
                                      BlocProvider.of<AuthCubit>(context);
                                  if (authCubit.state is Authenticated) {
                                    context.read<BagBloc>().add(
                                          AddItemTobag(
                                              AddTobagRequest(
                                                  quantity: quantity),
                                              food.id,
                                              null),
                                        );
                                    Navigator.of(context).pop();
                                  } else {
                                    context.push(AppRoutes.loginPage);
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppPadding.p10),
                                  alignment: Alignment.center,
                                  height: AppSize.s50,
                                  decoration: BoxDecoration(
                                    color: ColorManager.black,
                                    border: Border.all(
                                      color: ColorManager.black,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s28),
                                  ),
                                  child: Text(
                                    "+  Add Item Rs. ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                          color: ColorManager.white,
                                          fontSize: FontSize.s14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ));
    },
  );
}

Widget makeDismissible(BuildContext context, {required Widget child}) {
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => Navigator.of(context).pop(),
    child: GestureDetector(
      onTap: () {},
      child: child,
    ),
  );
}

showToast(String msg, {Color? bgColor}) {
  Fluttertoast.showToast(msg: msg, backgroundColor: bgColor);
}

// Login Error dialog

Future<dynamic> showLoginDialog(
    BuildContext context, String title, String msg) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)), //this right here
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    title, ColorManager.textDark, 24, FontWeightManager.bold),
                const SizedBox(
                  height: 8,
                ),
                customText(
                    msg, ColorManager.textDark, 14, FontWeightManager.bold),
                const SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorManager.black,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text("Try Again",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: ColorManager.white)),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
