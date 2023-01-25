import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/banner/banner_cubit/banner_cubit.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:foodbusters/features/common/bloc/connectivity/connectivity_cubit.dart';
import 'package:foodbusters/features/common/pages/no_internet_page.dart';
import 'package:foodbusters/features/home/presentation/widgets/banner_widget.dart';
import 'package:foodbusters/features/home/presentation/widgets/featured_item_section.dart';
import 'package:foodbusters/features/home/presentation/widgets/featured_restaurant.dart';
import 'package:foodbusters/features/home/presentation/widgets/home_page_appbar.dart';
import 'package:foodbusters/features/home/presentation/widgets/ongoing_order.dart';
import 'package:foodbusters/features/home/presentation/widgets/restaurant_category_slider.dart';
import 'package:foodbusters/features/order/presentation/bloc/cubit/order_history_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/deals_and_offer/deals_and_offer_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/featured_item/featured_item_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/featured_restaurants/featured_restaurant_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/presentation/bloc/restaurant_category_bloc.dart';
import 'package:foodbusters/widgets/deals_and_offer_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<int> list = [1, 2, 3, 4, 5];
  final bool _showCurve = true;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    final orderHistoryState = context.read<OrderHistoryCubit>().state;
    if (orderHistoryState is! OrderHistoryLoaded) {
      context.read<OrderHistoryCubit>().getOrderHistory();
    }
    super.initState();
  }

  void refresh() {
    context.read<RestaurantCategoryBloc>().add(const GetRestaurantCategory());
    context.read<FeaturedItemBloc>().add(const GetFeaturedItems());
    context.read<FeaturedRestaurantBloc>().add(const GetFeatturedRestaurants());
    context.read<DealsAndOfferCubit>().getOfferAndDealsFoodsList();
    context.read<OrderHistoryCubit>().getOrderHistory;
    context.read<BannerCubit>().getBanners();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityCubit, ConnectivityState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const Center(
                // child: CircularProgressIndicator(),
                );
          },
          disconnected: () {
            return const NoInternetPage();
          },
          connected: () {
            return Scaffold(
              backgroundColor: ColorManager.primary,
              body: SafeArea(
                child: NestedScrollView(
                  headerSliverBuilder: (context, isScolled) {
                    return [
                      const SliverToBoxAdapter(
                        child: HomePageAppBar(),
                      ),
                      SliverPersistentHeader(
                        delegate: HomeAppbarDelegate(),
                        floating: true,
                        pinned: true,
                      )
                    ];
                  },
                  body: RefreshIndicator(
                    onRefresh: () async {
                      refresh();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorManager.white,
                          borderRadius: _showCurve
                              ? const BorderRadius.vertical(
                                  top: Radius.circular(
                                    AppSize.s20,
                                  ),
                                )
                              : null),
                      child: CustomScrollView(
                        physics: const BouncingScrollPhysics(),
                        slivers: [
                          SliverToBoxAdapter(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //-------------------- ongoing order ------------------

                                BlocBuilder<OrderHistoryCubit,
                                    OrderHistoryState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      orderHistoryLoading: () {
                                        return const SizedBox.shrink();
                                      },
                                      orderHistoryLoaded:
                                          (orderHistory, activeItem) {
                                        return (orderHistory
                                                        .pendingOrdersInfo !=
                                                    null &&
                                                orderHistory.pendingOrdersInfo!
                                                    .restImg.isNotEmpty)
                                            ? GestureDetector(
                                                onTap: () {
                                                  context
                                                      .read<BottomNavCubit>()
                                                      .changeBottomNavIndex(
                                                          2,
                                                          BottomNavType
                                                              .foodbusters);
                                                },
                                                child: OngoingOrder(
                                                  pendingOrdersInfo:
                                                      orderHistory
                                                          .pendingOrdersInfo,
                                                ))
                                            : Container(height: 20);
                                      },
                                      orElse: () {
                                        return Container(
                                          height: 20,
                                        );
                                      },
                                    );
                                  },
                                ),

                                const SizedBox(height: AppSize.s4),
                                //-------------------- resturant category ------------------
                                const RestaurantCategorySlider(),
                                const SizedBox(height: AppSize.s24),

                                // -------------------- Carausel slider -------------------
                                const BannerWidget(),
                                const SizedBox(height: AppSize.s20),
                                //---------------- Deals and offers------------------
                                BlocBuilder<DealsAndOfferCubit,
                                    DealsAndOfferState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      offerLoaded: (foodList) {
                                        return foodList.isNotEmpty
                                            ? Container(
                                                color:
                                                    ColorManager.dealsLightBg,
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                ),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: AppPadding
                                                                    .p16),
                                                        child: Row(
                                                          children: [
                                                            customText(
                                                                "Deals and Offers",
                                                                ColorManager
                                                                    .textDark,
                                                                20,
                                                                FontWeight
                                                                    .w800),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: AppSize.s20),
                                                      SizedBox(
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height /
                                                            3.6,
                                                        child: ListView.builder(
                                                          physics:
                                                              const BouncingScrollPhysics(),
                                                          padding:
                                                              EdgeInsets.zero,
                                                          itemCount:
                                                              foodList.length,
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemBuilder:
                                                              (context, index) {
                                                            final food =
                                                                foodList[index];
                                                            return DealsAndOfferWidget(
                                                                food: food);
                                                          },
                                                        ),
                                                      ),
                                                    ]),
                                              )
                                            : const SizedBox.shrink();
                                      },
                                      orElse: () {
                                        return const SizedBox.shrink();
                                      },
                                    );
                                  },
                                ),

                                const SizedBox(height: AppSize.s20),
                                // --------------------BBSM AD SECTION-----------------
                                GestureDetector(
                                  onTap: () {
                                    context.go(AppRoutes.bbLandingPage);
                                    context
                                        .read<BottomNavCubit>()
                                        .changeBottomNavIndex(
                                            0, BottomNavType.bhatBhateni);
                                  },
                                  child: Container(
                                    height: AppSize.s120,
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: AppPadding.p16),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(AppSize.s10)),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(AppSize.s10),
                                      child: Image.asset(
                                        ImageAsset.bbsmAd,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: AppSize.s20),
                                //------------------ Featured item section
                                const FeaturedItemSection(),
                                //----------------------- Featured resturants -----------------------
                                const FeaturedRestaurant(),
                                Container(height: AppSize.s100),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class HomeAppbarDelegate extends SliverPersistentHeaderDelegate {
  HomeAppbarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: ColorManager.primary,
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
                      context.push(AppRoutes.searchPage);
                    },
                    decoration: InputDecoration(
                      fillColor: ColorManager.white,
                      suffixIcon: Container(
                        padding: const EdgeInsets.all(AppSize.s14),
                        child: SvgPicture.asset(ImageAsset.searchIcon),
                      ),
                      hintText: "Search food and restaurant",
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
