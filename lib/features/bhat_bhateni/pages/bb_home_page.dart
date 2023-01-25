import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bb_category_slider/bloc/bb_category_slider_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bb_category_slider/pages/bb_category_slider.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bloc/bb_category_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/widgets/category_card.dart';
import 'package:foodbusters/features/bhat_bhateni/pages/appbar/bb_appbar.dart';
import 'package:foodbusters/features/bhat_bhateni/pages/homepage_widgets/deals/bloc/bb_deals_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/featured_item/bb_featured_item_cubit.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../product/presentation/widgets/bb_featured_section.dart';
import 'homepage_widgets/deals/widgets/bb_deals.dart';

class BBHomePage extends StatefulWidget {
  const BBHomePage({Key? key}) : super(key: key);

  @override
  State<BBHomePage> createState() => _BBHomePageState();
}

class _BBHomePageState extends State<BBHomePage> {
  List<int> banner = [1, 2, 3, 4, 5];
  final ValueNotifier<int> initialIndex = ValueNotifier<int>(0);
  final controller = CarouselController();

  @override
  void initState() {
    super.initState();
    context.read<BbCategoryBloc>().add(const GetBBCategoryList());
    context.read<BBFeaturedItemCubit>().getBBSMFeaturedItem();
  }

  void refresh() {
    context.read<BbCategoryBloc>().add(const GetBBCategoryList());
    context.read<BbDealsBloc>().add(const GetBBDeals());
    context.read<BbCategorySliderBloc>().add(const GetBBSlider());
    context.read<BBFeaturedItemCubit>().getBBSMFeaturedItem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bbPrimary,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, isScolled) {
            return [
              const SliverToBoxAdapter(
                child: BBHomePageAppBar(),
              ),
              SliverPersistentHeader(
                delegate: BBHomeAppbarDelegate(),
                floating: true,
                pinned: true,
              )
            ];
          },
          body: RefreshIndicator(
            onRefresh: () async {
              refresh();
            },
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppPadding.p16),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(AppSize.s20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Free delivery on your first 2 orders

                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 10, horizontal: 16),
                    //   decoration: BoxDecoration(
                    //       color: ColorManager.primaryLight,
                    //       borderRadius: BorderRadius.circular(10)),
                    //   child: Row(
                    //     children: [
                    //       Container(
                    //         height: AppSize.s28,
                    //         width: AppSize.s28,
                    //         decoration: BoxDecoration(
                    //           color: ColorManager.bbPrimary,
                    //           shape: BoxShape.circle,
                    //         ),
                    //         padding: const EdgeInsets.all(AppPadding.p4),
                    //         alignment: Alignment.center,
                    //         child: Text(
                    //           "%",
                    //           style: Theme.of(context)
                    //               .textTheme
                    //               .headline6
                    //               ?.copyWith(
                    //                 color: ColorManager.white,
                    //               ),
                    //         ),
                    //       ),
                    //       const SizedBox(
                    //         width: AppSize.s10,
                    //       ),
                    //       RichText(
                    //         text: TextSpan(
                    //           text: 'Free Delivery ',
                    //           style: GoogleFonts.lato(
                    //               color: ColorManager.textDark,
                    //               fontWeight: FontWeight.w700,
                    //               fontSize: 14),
                    //           children: <TextSpan>[
                    //             TextSpan(
                    //                 text: 'on your first 2 orders',
                    //                 style: GoogleFonts.lato(
                    //                     color: ColorManager.textDark,
                    //                     fontWeight: FontWeight.w500,
                    //                     fontSize: 14)),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // const SizedBox(height: AppSize.s20),

                    const BBCategorySlider(),

                    // category grid ----------------------
                    BlocBuilder<BbCategoryBloc, BbCategoryState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loading: () {
                            return const SizedBox(
                              height: AppSize.s150,
                              width: double.maxFinite,
                            );
                          },
                          failureState: () {
                            return const SizedBox.shrink();
                          },
                          successState: (data) {
                            final categories = data
                                .categoryPaginationDatacategories.categories;
                            return categories.isNotEmpty
                                ? Column(
                                    children: [
                                      GridView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: AppSize.s10,
                                          mainAxisSpacing: AppSize.s10,
                                        ),
                                        itemCount: categories.length > 6
                                            ? 6
                                            : categories.length,
                                        itemBuilder: (context, index) {
                                          final category = categories[index];
                                          return CategoryCard(
                                              category: category);
                                        },
                                      ),
                                      const SizedBox(height: AppSize.s16),
                                      SizedBox(
                                        height: AppSize.s55,
                                        width: double.infinity,
                                        child: AppButton(
                                          label: "All Categories",
                                          onPressed: () {
                                            context.push(
                                              AppRoutes.bbCategoryPage,
                                            );
                                          },
                                          bgColor: ColorManager.bbCategoryBg,
                                        ),
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink();
                          },
                          orElse: () {
                            return const SizedBox.shrink();
                          },
                        );
                      },
                    ),

                    const SizedBox(height: AppSize.s16),
                    // deals
                    const BBDeals(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                        onTap: () {
                          context.go(AppRoutes.landingPage);
                          context.read<BottomNavCubit>().changeBottomNavIndex(
                              0, BottomNavType.foodbusters);
                        },
                        child: Container(
                          height: 120,
                          decoration: const BoxDecoration(),
                          width: double.infinity,
                          child: Image.asset(
                            ImageAsset.foodAd,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSize.s16),
                    // Featured categories
                    // BlocBuilder<BbCategoryBloc, BbCategoryState>(
                    //   builder: (context, state) {
                    //     return state.maybeWhen(
                    //       successState: (data) {
                    //         return Column(
                    //           children: [
                    //             Row(
                    //               mainAxisAlignment:
                    //                   MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Text(
                    //                   "Featured Categories",
                    //                   style: Theme.of(context)
                    //                       .textTheme
                    //                       .headline4
                    //                       ?.copyWith(
                    //                           fontSize: 20,
                    //                           fontWeight: FontWeight.w800),
                    //                 ),
                    //                 TextButton(
                    //                     onPressed: () {
                    //                       context
                    //                           .push(AppRoutes.bbCategoryPage);
                    //                     },
                    //                     child: Text(
                    //                       "View more",
                    //                       style: Theme.of(context)
                    //                           .textTheme
                    //                           .headline4
                    //                           ?.copyWith(
                    //                               color: ColorManager.bbPrimary,
                    //                               fontSize: 14,
                    //                               fontWeight: FontWeight.w800),
                    //                     ))
                    //               ],
                    //             ),
                    //             const SizedBox(height: AppSize.s16),
                    //             SizedBox(
                    //               height: 180,
                    //               child: ListView.builder(
                    //                 itemCount: data
                    //                     .categoryPaginationDatacategories
                    //                     .categories
                    //                     .length,
                    //                 scrollDirection: Axis.horizontal,
                    //                 padding: EdgeInsets.zero,
                    //                 physics: const BouncingScrollPhysics(),
                    //                 itemBuilder: (context, index) {
                    //                   final category = data
                    //                       .categoryPaginationDatacategories
                    //                       .categories[index];
                    //                   return BBFeaturedCategoryWidget(
                    //                       category: category);
                    //                 },
                    //               ),
                    //             ),
                    //           ],
                    //         );
                    //       },
                    //       orElse: () {
                    //         return const SizedBox.shrink();
                    //       },
                    //     );
                    //   },
                    // ),
                    // const SizedBox(height: AppSize.s16),

                    //Featured Items(category or product items)
                    BlocBuilder<BBFeaturedItemCubit, BBFeaturedItemState>(
                        builder: (context, state) {
                      return state.maybeWhen(
                        featuredItemLoaded: (featuredItems) {
                          return featuredItems.isNotEmpty
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: featuredItems.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    final featuredItem = featuredItems[index];
                                    final isFeaturedProducts =
                                        featuredItem.products.isNotEmpty
                                            ? true
                                            : featuredItem.categories.isNotEmpty
                                                ? false
                                                : false;
                                    return BBFeaturedSection(
                                      featuredItem: featuredItem,
                                      isFeaturedProducts: isFeaturedProducts,
                                    );
                                  },
                                )
                              : Container(
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                );
                        },
                        orElse: () {
                          return const SizedBox.shrink();
                        },
                      );
                    }),

                    // // all products

                    // BlocBuilder<ProductBloc, ProductState>(
                    //   builder: (context, state) {
                    //     if (state.state == CurrentState.loading) {
                    //       return const Center(
                    //         child: CircularProgressIndicator(),
                    //       );
                    //     } else if (state.state == CurrentState.loaded) {
                    //       if (state.allProucts != null &&
                    //           state.allProucts!.isNotEmpty) {
                    //         final allProducts = state.allProucts;
                    //         return GridView.builder(
                    //             itemCount: allProducts!.length,
                    //             shrinkWrap: true,
                    //             physics: const NeverScrollableScrollPhysics(),
                    //             gridDelegate:
                    //                 const SliverGridDelegateWithFixedCrossAxisCount(
                    //               childAspectRatio: 3 / 4,
                    //               crossAxisCount: 2,
                    //               mainAxisSpacing: AppSize.s10,
                    //               crossAxisSpacing: AppSize.s10,
                    //             ),
                    //             padding: EdgeInsets.zero,
                    //             itemBuilder: (context, index) {
                    //               final product = allProducts[index];
                    //               return ProductCard(product: product);
                    //             });
                    //       }
                    //     } else {
                    //       return const SizedBox.shrink();
                    //     }
                    //     return const SizedBox.shrink();
                    //   },
                    // ),
                    const SizedBox(height: AppSize.s50)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BBHomeAppbarDelegate extends SliverPersistentHeaderDelegate {
  BBHomeAppbarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: ColorManager.bbPrimary,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: AppPadding.p20,
              left: AppPadding.p20,
              top: AppPadding.p16,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    readOnly: true,
                    onTap: () {
                      context.push(AppRoutes.bbsearchPage);
                    },
                    decoration: InputDecoration(
                      fillColor: ColorManager.white,
                      suffixIcon: Container(
                        padding: const EdgeInsets.all(AppSize.s14),
                        child: SvgPicture.asset(ImageAsset.searchIcon),
                      ),
                      hintText: "Search products",
                      hintStyle: GoogleFonts.lato(
                          fontSize: 16,
                          color: ColorManager.hintColor,
                          fontWeight: FontWeight.w500),
                      filled: true,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p12,
                        vertical: AppPadding.p16,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s10),
                        borderSide: BorderSide(
                            color: ColorManager.transparent,
                            width: AppSize.s1_5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSize.s10),
                        borderSide: BorderSide(
                            color: ColorManager.transparent,
                            width: AppSize.s1_5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
