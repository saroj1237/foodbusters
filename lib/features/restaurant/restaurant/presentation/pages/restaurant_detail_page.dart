import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:foodbusters/features/favourites/presentation/bloc/favourite_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/menu_search_cubit/menu_search_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_menu/restaurant_menu_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_offer/restaurant_offer_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/widgets/menu_tab.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/widgets/offer_tab.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/widgets/tab_bar_delegate.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantDetailPageModel {
  final String restaurantId;
  final int? initialTabIndex;
  final Food? offerFood; // to show food bottom sheet after menu loaded

  RestaurantDetailPageModel(
      {required this.restaurantId, this.initialTabIndex, this.offerFood});
}

class RestaurantDetailPage extends StatefulWidget {
  final RestaurantDetailPageModel pageModel;

  const RestaurantDetailPage({Key? key, required this.pageModel})
      : super(key: key);

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<RestaurantOfferCubit>()
        .getRestaurantOffers(widget.pageModel.restaurantId);

    context
        .read<RestaurantBloc>()
        .add(GetRestaurantDetail(widget.pageModel.restaurantId));
    context
        .read<RestaurantMenuBloc>()
        .add(GetRestaurantMenu("${widget.pageModel.restaurantId}?page=1"));
    final restaurantState = BlocProvider.of<RestaurantBloc>(context).state;
    if (restaurantState is GetRestaurantListSuccess) {
      isFav.value = restaurantState.restaurantDetail != null
          ? restaurantState.restaurantDetail!.isFavorite
          : false;
    }
  }

  ValueNotifier<bool> isFav = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<BagBloc>().add(const GetBagItems());
        context.read<MenuSearchCubit>().resetMenuSearchCubitState();
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: BlocListener<FavouriteBloc, FavouriteState>(
            listener: (context, state) {
              state.maybeWhen(
                addFavRestSuccess: (message) {
                  showSnackBar(
                    context,
                    message: message,
                    actionLabel: "View all",
                    behavior: SnackBarBehavior.floating,
                    onPressed: () {
                      context.push(AppRoutes.favouritePage);
                    },
                  );
                },
                orElse: () {},
              );
            },
            child: BlocListener<BagBloc, BagState>(
              listener: (context, bagState) {
                bagState.maybeWhen(
                  addTobagLoading: () {
                    showLoadingDialog(context);
                  },
                  addTobagSuccess: () {
                    Navigator.of(context).pop();
                    showSnackBar(context,
                        message: "Added to cart",
                        behavior: SnackBarBehavior.floating,
                        actionLabel: "Go to cart", onPressed: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      context.read<BagBloc>().add(const GetBagItems());
                      context
                          .read<BottomNavCubit>()
                          .changeBottomNavIndex(1, BottomNavType.foodbusters);
                      context.go(AppRoutes.landingPage);
                    });
                  },
                  addTobagFailure: (errorMsg) {
                    Navigator.of(context).pop();

                    showSnackBar(
                      context,
                      message: "Error adding to cart",
                      behavior: SnackBarBehavior.floating,
                    );
                  },
                  orElse: () {},
                );
              },
              child: DefaultTabController(
                length: 2,
                initialIndex: widget.pageModel.initialTabIndex ?? 0,
                child: NestedScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  headerSliverBuilder: (context, isScolled) {
                    return [
                      SliverAppBar(
                        iconTheme: const IconThemeData(
                          color: Colors.white, //change your color here
                        ),
                        backgroundColor: ColorManager.white,
                        collapsedHeight: 200,
                        expandedHeight: 200,
                        elevation: 0,
                        floating: true,
                        pinned: true,
                        flexibleSpace: const ProfileView(),
                        actions: [
                          BlocListener<RestaurantBloc, RestaurantState>(
                            listener: (context, state) {
                              state.maybeWhen(
                                  getRestaurantListSuccess:
                                      (res, menu, detail) {
                                    isFav.value = detail!.isFavorite;
                                  },
                                  orElse: () {});
                            },
                            child: ValueListenableBuilder<bool>(
                              valueListenable: isFav,
                              builder: (context, value, _) => IconButton(
                                onPressed: () {
                                  final authBloc = context.read<AuthCubit>();
                                  if (authBloc.state is Authenticated) {
                                    // context.read<RestaurantBloc>().add(
                                    //     UpdateFavouriteState(
                                    //         widget.pageModel.restaurantId));
                                    context.read<FavouriteBloc>().add(
                                        AddFavouriteRestaurant(
                                            widget.pageModel.restaurantId,
                                            false));
                                    isFav.value = !isFav.value;
                                  } else {
                                    context.push(AppRoutes.loginPage);
                                  }
                                },
                                icon: Icon(
                                  value
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  size: AppSize.s24,
                                  color: value ? ColorManager.error : null,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SliverPersistentHeader(
                        delegate: TabBarDelegate(
                            TabBar(
                              tabs: const [
                                Tab(text: 'Menu'),
                                Tab(text: "Offer"),
                              ],
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              indicator: const UnderlineTabIndicator(
                                  borderSide: BorderSide(width: 2.0),
                                  insets:
                                      EdgeInsets.symmetric(horizontal: 50.0)),
                              indicatorColor: ColorManager.black,
                              unselectedLabelColor: ColorManager.grey,
                              labelColor: ColorManager.black,
                              labelStyle: GoogleFonts.lato(
                                  fontWeight: FontWeight.w800,
                                  fontSize: FontSize.s16),
                              unselectedLabelStyle: GoogleFonts.lato(
                                  fontWeight: FontWeight.w800,
                                  fontSize: FontSize.s16),
                            ),
                            widget.pageModel.restaurantId),
                        floating: false,
                        pinned: true,
                      ),
                      // SliverPersistentHeader(delegate: )
                    ];
                  },
                  body: TabBarView(
                    children: [
                      MenuTab(
                        offerFood: widget.pageModel.offerFood,
                        resId: widget.pageModel.restaurantId,
                      ),
                      OfferTab(restaurantId: widget.pageModel.restaurantId),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantBloc, RestaurantState>(
      builder: (context, state) {
        return state.maybeWhen(
          getRestaurantListLoading: () {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 2.0),
            );
          },
          getRestaurantListFailure: () {
            return const Text("Error occured");
          },
          getRestaurantListSuccess: (resList, menu, resDetail) {
            return resDetail != null
                ? Stack(
                    children: [
                      Positioned.fill(
                        child: CustomCachedImage(
                          imageUrl: resDetail.images!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: CustomCachedImage(
                          imageUrl: resDetail.images!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              ColorManager.black.withOpacity(.5),
                              ColorManager.transparent,
                            ],
                          )),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Wrap(
                          children: [
                            Container(
                              // color: ColorManager.grey1,
                              padding: const EdgeInsets.all(AppPadding.p16),
                              width: double.maxFinite,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customText(resDetail.restaurantName,
                                      ColorManager.white, 18, FontWeight.w700),
                                  const SizedBox(height: AppSize.s8),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: ColorManager.white,
                                        size: 12,
                                      ),
                                      const SizedBox(width: AppSize.s4),
                                      Text(resDetail.address ?? 'Not Available',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              ?.copyWith(
                                                  color: ColorManager.white)),
                                      const SizedBox(width: AppSize.s20),
                                      Icon(
                                        Icons.watch_later_outlined,
                                        color: ColorManager.white,
                                        size: 12,
                                      ),
                                      const SizedBox(width: AppSize.s4),
                                      Expanded(
                                        child: Text(
                                          '${resDetail.openingTime}-${resDetail.closingTime}',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              ?.copyWith(
                                                color: ColorManager.white,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : const Text("no detail of restaurant");
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
