import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/banner/banner_cubit/banner_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/restaurant_detail_page.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/presentation/bloc/restaurant_list_bloc/restaurant_list_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'homepage_shimmer/banner_widget_simmer.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final ValueNotifier<int> initialIndex = ValueNotifier<int>(0);
  final controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerCubit, BannerState>(
      builder: (context, state) {
        return state.when(initial: () {
          return const SizedBox.shrink();
        }, bannerLoading: () {
          return const BannerWidgetShimmer();
        }, bannerFailure: (error) {
          return const SizedBox.shrink();
        }, bannerLoaded: (banners) {
          if (banners.isNotEmpty) {
            return Column(
              children: [
                CarouselSlider(
                  carouselController: controller,
                  options: CarouselOptions(
                      aspectRatio: 2,
                      enlargeCenterPage: false,
                      padEnds: false,
                      viewportFraction: 0.87,
                      enableInfiniteScroll: false,
                      autoPlayInterval: const Duration(seconds: 6),
                      autoPlayAnimationDuration: const Duration(seconds: 1),
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          initialIndex.value = index;
                        });
                      }),
                  items: banners
                      .map(
                        (banner) => Builder(
                          builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                if (banner.restId == null &&
                                    banner.categoryId == null) return;
                                if (banner.restId != null) {
                                  context.push(AppRoutes.restaurantDetailPage,
                                      extra: RestaurantDetailPageModel(
                                          restaurantId: banner.restId!));
                                  return;
                                } else if (banner.categoryId != null) {
                                  context.read<RestaurantListBloc>().add(
                                      GetRestaurantsList(banner.categoryId!));
                                  context.push(AppRoutes.restaurantListPage,
                                      extra: "Restaurants");
                                }
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: AppMargin.m10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s10),
                                ),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s10),
                                  child: CustomCachedImage(
                                    imageUrl: banner.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: AppSize.s16),
                AnimatedSmoothIndicator(
                    effect: ExpandingDotsEffect(
                        dotWidth: 8,
                        dotHeight: 8,
                        activeDotColor: ColorManager.primary,
                        dotColor: ColorManager.hintColor.withOpacity(0.5)),
                    activeIndex: initialIndex.value,
                    count: banners.length),
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        });
      },
    );
  }
}
