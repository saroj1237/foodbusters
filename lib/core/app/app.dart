import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/address_settings/presentataion/bloc/search_google_place/search_google_place_cubit.dart';
import 'package:foodbusters/features/authentication/forgot_password/presentation/bloc/forgot_password_bloc.dart';
import 'package:foodbusters/features/authentication/login/presentation/bloc/login_bloc.dart';
import 'package:foodbusters/features/authentication/signup/presentation/bloc/signup_bloc.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/banner/banner_cubit/banner_cubit.dart';
import 'package:foodbusters/features/banner/offer_slider_cubit/offer_slider_cubit.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/bloc/cart_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bb_category_slider/bloc/bb_category_slider_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bloc/bb_category_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bloc/category_search/category_search_cubit.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bloc/sub_category/sub_category_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/bloc/b_b_order_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/bloc/bb_delivery_charge_cubit/bb_delivery_charge_cubit.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/bloc/bb_order_history/bborder_history_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/pages/homepage_widgets/deals/bloc/bb_deals_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/featured_item/bb_featured_item_cubit.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/featured_product/featured_product_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/product_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/product_detail/product_detail_cubit.dart';
import 'package:foodbusters/features/bhat_bhateni/search/presentation/bloc/trending_search_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:foodbusters/features/common/bloc/connectivity/connectivity_cubit.dart';
import 'package:foodbusters/features/common/bloc/current_position/current_position_cubit.dart';
import 'package:foodbusters/features/faq_feedback/presentation/faq_bloc/faq_bloc.dart';
import 'package:foodbusters/features/favourites/presentation/bloc/favourite_bloc.dart';
import 'package:foodbusters/features/order/presentation/bloc/coupon/coupon_cubit.dart';
import 'package:foodbusters/features/order/presentation/bloc/cubit/order_history_cubit.dart';
import 'package:foodbusters/features/order/presentation/bloc/delivery_fee_cubit/delivery_fee_cubit.dart';
import 'package:foodbusters/features/order/presentation/bloc/order_bloc.dart';
import 'package:foodbusters/features/payment/khalti/presentation/bloc/khalti_bloc.dart';
import 'package:foodbusters/features/payment/presentation/bloc/payment/payment_bloc.dart';
import 'package:foodbusters/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:foodbusters/features/restaurant/new_partners/presentation/bloc/partner_rest_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/all_restaurant/all_restaurant_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/deals_and_offer/deals_and_offer_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/featured_item/featured_item_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/featured_restaurants/featured_restaurant_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/menu_search_cubit/menu_search_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_menu/restaurant_menu_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_offer/restaurant_offer_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/presentation/bloc/restaurant_category_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/presentation/bloc/restaurant_list_bloc/restaurant_list_bloc.dart';
import 'package:foodbusters/features/search/presentation/bloc/trending_search_bloc.dart';
import 'package:foodbusters/features/search/presentation/search_bloc/search_bloc.dart';
import 'package:foodbusters/injection_container.dart';

import '../../features/address_settings/presentataion/bloc/address_bloc.dart';
import '../../features/bhat_bhateni/search/presentation/bloc/bb_search_bloc/search_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal(); // private named constructor
  static const MyApp instance =
      MyApp._internal(); // singal instance -- singleton
  factory MyApp() => instance; //factory for the class instance
  @override
  State<MyApp> createState() => _MyAppState();
}
// publicKey: "test_public_key_7412d0f09d63498bba82b6fc500d9ca7",

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: ColorManager.primary));

    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<CurrentPositionCubit>(
            create: (_) =>
                sl.get<CurrentPositionCubit>()..getCurrentPosition()),
        BlocProvider<BannerCubit>(
            create: (_) => sl.get<BannerCubit>()..getBanners()),
        BlocProvider<OfferSliderCubit>(
            create: (_) => OfferSliderCubit(Dio())..getOffers()),
        BlocProvider<BottomNavCubit>(create: (_) => sl<BottomNavCubit>()),
        BlocProvider<ConnectivityCubit>(
          create: (_) => sl<ConnectivityCubit>()..checkConnection(),
        ),
        BlocProvider<SignupBloc>(create: (_) => sl<SignupBloc>()),
        BlocProvider<LoginBloc>(create: (_) => sl<LoginBloc>()),
        BlocProvider<AuthCubit>(
            create: (_) => AuthCubit(appPreferences: sl(), dioClient: sl())
              ..checkAuthState()),
        BlocProvider<ProfileBloc>(create: (_) => sl<ProfileBloc>()),
        BlocProvider<RestaurantCategoryBloc>(
            create: (_) => sl<RestaurantCategoryBloc>()
              ..add(const GetRestaurantCategory())),
        BlocProvider<RestaurantBloc>(create: (_) => sl<RestaurantBloc>()),
        BlocProvider<RestaurantOfferCubit>(
            create: (_) => sl<RestaurantOfferCubit>()),
        BlocProvider<AllRestaurantCubit>(
            create: (_) => sl<AllRestaurantCubit>()..getAllRestaurants()),
        BlocProvider<ForgotPasswordBloc>(
            create: (_) => sl<ForgotPasswordBloc>()),

        BlocProvider<BagBloc>(create: (_) => sl<BagBloc>()),
        BlocProvider<PartnerRestBloc>(
          create: (_) =>
              sl<PartnerRestBloc>()..add(const GetPartnerRestaurantList()),
        ),
        BlocProvider<DealsAndOfferCubit>(
            create: (_) =>
                sl<DealsAndOfferCubit>()..getOfferAndDealsFoodsList()),
        BlocProvider<FeaturedRestaurantBloc>(
            create: (_) => sl.get<FeaturedRestaurantBloc>()
              ..add(const GetFeatturedRestaurants())),
        BlocProvider<SearchGooglePlaceCubit>(
            create: (_) => sl<SearchGooglePlaceCubit>()),
        BlocProvider<AddressBloc>(create: (_) => sl<AddressBloc>()),
        BlocProvider<OrderBloc>(create: (_) => sl<OrderBloc>()),
        BlocProvider<DeliveryFeeCubit>(create: (_) => sl<DeliveryFeeCubit>()),
        BlocProvider<CouponCubit>(create: (_) => sl<CouponCubit>()),

        BlocProvider<OrderHistoryCubit>(create: (_) => sl<OrderHistoryCubit>()),
        BlocProvider<PaymentBloc>(create: (_) => sl<PaymentBloc>()),
        BlocProvider<SearchBloc>(create: (_) => sl<SearchBloc>()),
        BlocProvider<FAQBloc>(create: (_) => sl<FAQBloc>()),
        BlocProvider<TrendingSearchBloc>(
            create: (_) =>
                sl<TrendingSearchBloc>()..add(const GetTrendingSearches())),
        BlocProvider<KhaltiBloc>(create: (_) => sl<KhaltiBloc>()),
        BlocProvider<FeaturedItemBloc>(
            create: (_) =>
                sl<FeaturedItemBloc>()..add(const GetFeaturedItems())),
        BlocProvider<FavouriteBloc>(create: (_) => sl<FavouriteBloc>()),

        BlocProvider<RestaurantListBloc>(
            create: (_) => sl<RestaurantListBloc>()),
        BlocProvider<RestaurantMenuBloc>(
            create: (_) => sl<RestaurantMenuBloc>()),

        //bhat bhateni
        BlocProvider<BBSearchBloc>(create: (_) => sl<BBSearchBloc>()),
        BlocProvider<BBTrendingSearchBloc>(
            create: (_) =>
                sl<BBTrendingSearchBloc>()..add(const BBGetTrendingSearches())),

        BlocProvider<BbCategoryBloc>(
            create: (_) =>
                sl<BbCategoryBloc>()..add(const GetBBCategoryList())),
        BlocProvider<SubCategoryBloc>(create: (_) => sl<SubCategoryBloc>()),
        BlocProvider<BbDealsBloc>(
            create: (_) => sl<BbDealsBloc>()..add(const GetBBDeals())),
        BlocProvider<ProductDetailCubit>(
            create: (_) => sl<ProductDetailCubit>()),
        BlocProvider<BBFeaturedItemCubit>(
            create: (_) => sl<BBFeaturedItemCubit>()..getBBSMFeaturedItem()),
        BlocProvider<BbCategorySliderBloc>(
            create: (_) =>
                sl<BbCategorySliderBloc>()..add(const GetBBSlider())),
        BlocProvider<ProductBloc>(create: (_) => sl<ProductBloc>()),
        BlocProvider<FeaturedProductBloc>(
            create: (_) => sl<FeaturedProductBloc>()),
        BlocProvider<CategorySearchCubit>(
            create: (_) => sl<CategorySearchCubit>()),
        BlocProvider<CartBloc>(create: (_) => sl.get<CartBloc>()),
        BlocProvider<BBOrderBloc>(create: (_) => sl.get<BBOrderBloc>()),
        BlocProvider<BbDeliveryChargeCubit>(
            create: (_) => sl.get<BbDeliveryChargeCubit>()),
        BlocProvider<BborderHistoryBloc>(
            create: (_) => sl.get<BborderHistoryBloc>()),
        BlocProvider<MenuSearchCubit>(create: (_) => sl.get<MenuSearchCubit>())
      ],
      child: MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
      ),
    );
  }
}
