import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bb_category_slider/bloc/bb_category_slider_bloc.dart';
import 'package:foodbusters/features/home/presentation/widgets/homepage_shimmer/banner_widget_simmer.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BBCategorySlider extends StatefulWidget {
  const BBCategorySlider({
    Key? key,
  }) : super(key: key);

  @override
  State<BBCategorySlider> createState() => _BBCategorySliderState();
}

class _BBCategorySliderState extends State<BBCategorySlider> {
  final ValueNotifier<int> initialIndex = ValueNotifier<int>(0);
  final controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BbCategorySliderBloc, BbCategorySliderState>(
      builder: (context, state) {
        return state.maybeWhen(
          getSliderLoading: () {
            return const BannerWidgetShimmer();
          },
          getSliderSuccess: (slider) {
            return slider.isNotEmpty
                ? Column(
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
                            autoPlayAnimationDuration:
                                const Duration(seconds: 1),
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                initialIndex.value = index;
                              });
                            }),
                        items: slider
                            .map(
                              (banner) => Builder(
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () {
                                      if (banner.productId == null &&
                                          banner.productcategoryId == null) {
                                        return;
                                      }
                                      if (banner.productId != null) {
                                        context.push(
                                            AppRoutes.productDetailPage,
                                            extra: banner.productId);
                                      } else if (banner.productcategoryId !=
                                          null) {
                                        context.push(
                                            AppRoutes.bbSubCategoryPage,
                                            extra: BBCategory(
                                                id: banner.productcategoryId!,
                                                name: "Category"));
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
                                          imageUrl: banner.image!,
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
                              activeDotColor: ColorManager.bbPrimary,
                              dotColor:
                                  ColorManager.hintColor.withOpacity(0.5)),
                          activeIndex: initialIndex.value,
                          count: slider.length),
                      const SizedBox(height: AppSize.s20),
                    ],
                  )
                : const SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
