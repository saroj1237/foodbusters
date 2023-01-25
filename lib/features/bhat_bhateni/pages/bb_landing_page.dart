import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:go_router/go_router.dart';

class BBLandingPage extends StatefulWidget {
  const BBLandingPage({Key? key}) : super(key: key);

  @override
  State<BBLandingPage> createState() => _BBLandingPageState();
}

// Future<bool> _onWillPop(BuildContext context, int navIndex) async {
//   if (navIndex != 0) {
//     context
//         .read<BottomNavCubit>()
//         .changeBottomNavIndex(0, BottomNavType.bhatBhateni);
//     return false;
//   } else {
//     final value = await showExitDialog(context);
//     if (value != null && value == true) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// }

class _BBLandingPageState extends State<BBLandingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        final currentIndex = state.currentIndex;
        return WillPopScope(
          onWillPop: () async {
            context
                .read<BottomNavCubit>()
                .changeBottomNavIndex(0, BottomNavType.foodbusters);
            return true;
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: state.screen,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.go(AppRoutes.landingPage);
                context
                    .read<BottomNavCubit>()
                    .changeBottomNavIndex(0, BottomNavType.foodbusters);
              },
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  ImageAsset.logo,
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 10,
              child: Container(
                height: 60,
                // color: ColorManager.skyBlue,
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              minWidth: 30,
                              splashColor: ColorManager.white,
                              hoverColor: ColorManager.white,
                              focusColor: ColorManager.white,
                              highlightColor: ColorManager.lightGrey1,
                              onPressed: () {
                                context
                                    .read<BottomNavCubit>()
                                    .changeBottomNavIndex(
                                        0, BottomNavType.bhatBhateni);
                              },
                              child: SizedBox(
                                width: 35,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      ImageAsset.bbhomeIcon,
                                      height: AppSize.s20,
                                      width: AppSize.s20,
                                      color: currentIndex == 0
                                          ? ColorManager.black
                                          : ColorManager.grey3,
                                    ),
                                    const SizedBox(height: AppSize.s4),
                                    Text(
                                      "Mart",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: 12,
                                        color: currentIndex == 0
                                            ? null
                                            : ColorManager.grey3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            MaterialButton(
                              minWidth: 30,
                              splashColor: ColorManager.white,
                              hoverColor: ColorManager.white,
                              focusColor: ColorManager.white,
                              highlightColor: ColorManager.lightGrey1,
                              onPressed: () {
                                context.read<AuthCubit>().checkAuthState();
                                context
                                    .read<BottomNavCubit>()
                                    .changeBottomNavIndex(
                                        1, BottomNavType.bhatBhateni);
                              },
                              child: SizedBox(
                                width: 35,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      ImageAsset.bagIcon,
                                      height: AppSize.s20,
                                      width: AppSize.s20,
                                      color: currentIndex == 1
                                          ? ColorManager.black
                                          : ColorManager.grey3,
                                    ),
                                    const SizedBox(height: AppSize.s4),
                                    Text(
                                      "Cart",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: 12,
                                        color: currentIndex == 1
                                            ? null
                                            : ColorManager.grey3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, bottom: 4, top: 2),
                              child: Text(
                                'Foodbusters',
                                textScaleFactor: 1.0,
                                style: TextStyle(
                                    fontWeight: FontWeightManager.regular,
                                    fontSize: 12,
                                    color: ColorManager.black.withOpacity(0.5)),
                              ),
                            )),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              minWidth: 30,
                              splashColor: ColorManager.white,
                              hoverColor: ColorManager.white,
                              focusColor: ColorManager.white,
                              highlightColor: ColorManager.lightGrey1,
                              onPressed: () {
                                context
                                    .read<BottomNavCubit>()
                                    .changeBottomNavIndex(
                                        2, BottomNavType.bhatBhateni);
                              },
                              child: SizedBox(
                                width: 35,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      ImageAsset.orderIcon,
                                      height: AppSize.s20,
                                      width: AppSize.s20,
                                      color: currentIndex == 2
                                          ? ColorManager.black
                                          : ColorManager.grey3,
                                    ),
                                    const SizedBox(height: AppSize.s4),
                                    Text(
                                      "Order",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: 12,
                                        color: currentIndex == 2
                                            ? null
                                            : ColorManager.grey3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            MaterialButton(
                              minWidth: 30,
                              splashColor: ColorManager.white,
                              hoverColor: ColorManager.white,
                              focusColor: ColorManager.white,
                              highlightColor: ColorManager.lightGrey1,
                              onPressed: () {
                                context
                                    .read<BottomNavCubit>()
                                    .changeBottomNavIndex(
                                        3, BottomNavType.bhatBhateni);
                              },
                              child: SizedBox(
                                width: 35,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      ImageAsset.profileIcon,
                                      height: AppSize.s20,
                                      width: AppSize.s20,
                                      color: currentIndex == 3
                                          ? ColorManager.black
                                          : ColorManager.grey3,
                                    ),
                                    const SizedBox(height: AppSize.s4),
                                    Text(
                                      "Profile",
                                      textScaleFactor: 1.0,
                                      style: TextStyle(
                                        fontWeight: FontWeightManager.regular,
                                        fontSize: 12,
                                        color: currentIndex == 3
                                            ? null
                                            : ColorManager.grey3,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
