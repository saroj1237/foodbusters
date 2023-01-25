import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/helpers/location_helper.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/banner/offer_slider_cubit/offer_slider_cubit.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/injection_container.dart';
import 'package:go_router/go_router.dart';

import '../bloc/bottom_nav_cubit.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

Future<bool> _onWillPop(BuildContext context, int navIndex) async {
  if (navIndex != 0) {
    context
        .read<BottomNavCubit>()
        .changeBottomNavIndex(0, BottomNavType.foodbusters);
    return false;
  } else {
    final value = await showExitDialog(context);
    if (value != null && value == true) {
      return true;
    } else {
      return false;
    }
  }
}

class _LandingPageState extends State<LandingPage> {
  final AppinioSwiperController controller = AppinioSwiperController();
  late List<CardItem> cards = [];
  @override
  void initState() {
    super.initState();
    getCurrentPosition();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext mContext) => Dialog(
                insetPadding: const EdgeInsets.all(2),
                backgroundColor: Colors.transparent,
                elevation: 0,
                child: BlocBuilder<OfferSliderCubit, OfferSliderState>(
                  builder: (context, state) {
                    if (state is OfferLoading) {
                      return const Center();
                    }
                    if (state is OfferLoaded) {
                      if (state.offerImages.isNotEmpty) {
                        for (var candidate in state.offerImages) {
                          cards.add(
                            CardItem(
                              image: candidate,
                            ),
                          );
                        }
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.of(mContext).pop(),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: ColorManager.white),
                                child: Icon(
                                  Icons.close,
                                  size: 16,
                                  color: ColorManager.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.7,
                              child: AppinioSwiper(
                                threshold: 100,
                                controller: controller,
                                cards: cards,
                                onSwipe: _swipe,
                              ),
                            ),
                          ],
                        );
                      } else {
                        Navigator.of(mContext).pop();
                        return const SizedBox.shrink();
                        // return GestureDetector(
                        //   onTap: () => Navigator.of(mContext).pop(),
                        //   child: Container(
                        //     padding: const EdgeInsets.all(8),
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(50),
                        //         color: ColorManager.white),
                        //     child: Icon(
                        //       Icons.close,
                        //       size: 16,
                        //       color: ColorManager.black,
                        //     ),
                        //   ),
                        // );
                      }
                    } else {
                      Navigator.of(mContext).pop();
                      return const SizedBox.shrink();
                    }
                  },
                ),
              ));
    });
  }

  void _swipe(int index, AppinioSwiperDirection direction) {
    if (index == 0) {
      Navigator.pop(context);
    }
  }

  Future getCurrentPosition() async {
    final LocationHelper locationHelper = sl.get<LocationHelper>();
    await locationHelper.determinePosition();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        final currentIndex = state.currentIndex;
        return WillPopScope(
          onWillPop: () async {
            return _onWillPop(context, currentIndex);
          },
          child: Scaffold(
            backgroundColor: ColorManager.white,
            resizeToAvoidBottomInset: false,
            body: state.screen,
            extendBody: false,
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  context.push(AppRoutes.bbLandingPage);
                  context
                      .read<BottomNavCubit>()
                      .changeBottomNavIndex(0, BottomNavType.bhatBhateni);
                },
                child: SvgPicture.asset(ImageAsset.bhatBhateniSvg)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 10,
              child: Container(
                height: 60,
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              splashColor: ColorManager.white,
                              hoverColor: ColorManager.white,
                              focusColor: ColorManager.white,
                              highlightColor: ColorManager.lightGrey1,
                              minWidth: 30,
                              onPressed: () {
                                context
                                    .read<BottomNavCubit>()
                                    .changeBottomNavIndex(
                                        0, BottomNavType.foodbusters);
                              },
                              child: SizedBox(
                                width: 35,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      ImageAsset.homeIcon,
                                      height: AppSize.s20,
                                      width: AppSize.s20,
                                      color: currentIndex == 0
                                          ? ColorManager.black
                                          : ColorManager.grey3,
                                    ),
                                    const SizedBox(height: AppSize.s4),
                                    Text(
                                      "Home",
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
                                if (BlocProvider.of<AuthCubit>(context).state ==
                                    const Authenticated()) {
                                  context
                                      .read<BottomNavCubit>()
                                      .changeBottomNavIndex(
                                          1, BottomNavType.foodbusters);
                                } else {
                                  context.push(AppRoutes.loginPage);
                                }
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
                                      "Bag",
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
                                'Bhat-Bhateni',
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
                                if (BlocProvider.of<AuthCubit>(context).state ==
                                    const Authenticated()) {
                                  context
                                      .read<BottomNavCubit>()
                                      .changeBottomNavIndex(
                                          2, BottomNavType.foodbusters);
                                } else {
                                  context.push(AppRoutes.loginPage);
                                }
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
                            // const SizedBox(width: AppSize.s8),
                            MaterialButton(
                              minWidth: 30,
                              splashColor: ColorManager.white,
                              hoverColor: ColorManager.white,
                              focusColor: ColorManager.white,
                              highlightColor: ColorManager.lightGrey1,
                              onLongPress: () {},
                              onPressed: () {
                                context
                                    .read<BottomNavCubit>()
                                    .changeBottomNavIndex(
                                        3, BottomNavType.foodbusters);
                                // if (BlocProvider.of<AuthCubit>(context).state ==
                                //     const Authenticated()) {
                                //   context
                                //       .read<BottomNavCubit>()
                                //       .changeBottomNavIndex(
                                //           3, BottomNavType.foodbusters);
                                // } else {
                                //   context.push(AppRoutes.loginPage);

                                //   // Navigator.of(context)
                                //   //     .push(FullScreenLoginDialog());
                                // }
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
                                    // customText(
                                    //     "Profile",
                                    //     currentIndex == 3
                                    //         ? ColorManager.textDark
                                    //         : ColorManager.grey3,
                                    //     12,
                                    //     FontWeight.w700),
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

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        image,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
