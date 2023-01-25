import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodbusters/features/address_settings/presentataion/pages/address_list_page.dart';
import 'package:foodbusters/features/address_settings/presentataion/pages/map_page.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:foodbusters/features/authentication/forgot_password/presentation/pages/forgot_password_otp_page.dart';
import 'package:foodbusters/features/authentication/forgot_password/presentation/pages/forgot_password_phone_page.dart';
import 'package:foodbusters/features/authentication/login/presentation/pages/login_page.dart';
import 'package:foodbusters/features/authentication/signup/domain/entities/signup_entities.dart';
import 'package:foodbusters/features/authentication/signup/presentation/pages/signup_otp_page.dart';
import 'package:foodbusters/features/authentication/signup/presentation/pages/signup_phone_page.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';
import 'package:foodbusters/features/bag/presentation/pages/bag_item_detail_page.dart';
import 'package:foodbusters/features/bag/presentation/pages/bag_page.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/pages/cart_page.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/pages/bb_category_page.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/pages/sub_category_products_page.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/pages/bb_checkout_page.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/pages/bb_orderhistory_detail_page.dart';
import 'package:foodbusters/features/bhat_bhateni/pages/bb_home_page.dart';
import 'package:foodbusters/features/bhat_bhateni/pages/bb_landing_page.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/pages/featured_item_products_page.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/pages/product_detail_page.dart';
import 'package:foodbusters/features/bhat_bhateni/search/presentation/pages/bb_search_page.dart';
import 'package:foodbusters/features/common/pages/about_page.dart';
import 'package:foodbusters/features/common/pages/image_preview_page.dart';
import 'package:foodbusters/features/common/pages/landing_page.dart';
import 'package:foodbusters/features/common/pages/splash_page.dart';
import 'package:foodbusters/features/favourites/presentation/pages/favourite_page.dart';
import 'package:foodbusters/features/order/presentation/pages/checkout_page.dart';
import 'package:foodbusters/features/order/presentation/pages/order_history_detail_page.dart';
import 'package:foodbusters/features/order/presentation/pages/order_list_page.dart';
import 'package:foodbusters/features/payment/khalti/presentation/pages/khalit_login_page.dart';
import 'package:foodbusters/features/payment/presentation/pages/payment_failure_page.dart';
import 'package:foodbusters/features/payment/presentation/pages/payment_selection_page.dart';
import 'package:foodbusters/features/payment/presentation/pages/payment_success_page.dart';
import 'package:foodbusters/features/payment/presentation/pages/payment_verification_page.dart';
import 'package:foodbusters/features/profile/domain/entities/profile_entities.dart';
import 'package:foodbusters/features/profile/presentation/pages/change_password_page.dart';
import 'package:foodbusters/features/profile/presentation/pages/edit_profile_page.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/all_restaurants_page.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/restaurant_detail_page.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/restaurant_list_page.dart';
import 'package:foodbusters/features/search/presentation/pages/search_page.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

import '../../features/authentication/forgot_password/presentation/pages/forgot_password_reset_page.dart';
import '../../features/faq_feedback/presentation/pages/faqs_page.dart';
import '../../features/faq_feedback/presentation/pages/feedback_page.dart';

class AppRoutes {
  static const splashPage = '/splashPage';
  // static const homePage = '/';
  static const landingPage = '/landingPage';
  static const bagPage = '/bagPage';
  // AUTHENTICATION
  static const loginPage = '/loginPage';
  static const signupPhonePage = '/signupPhonePage';
  static const signupOtpPage = '/signupOtpPage';
  static const forgotPasswordPhonePage = '/forgotPasswordPhonePage';
  static const forgotPasswordOtpPage = '/forgotPasswordOtpPage';
  static const forgotPasswordResetPage = '/forgotPasswordResetPage';

  static const editProfilePage = '/editProfilePage';
  static const changePasswordPage = '/changePasswordPage';

  static const bagItemDetailPage = '/bagItemDetailPage';
  static const checkoutPage = '/checkoutPage';
  static const orderlistPage = '/orderlistPage';
  static const orderHistoryDetailPage = '/orderHistoryDetailPage';

  static const favouritePage = '/favouritePage';

  static const paymentSelectionPage = '/paymentSelectionPage';
  static const paymentVerificationPage = '/paymentVerificationPage';
  static const paymentSuccessPage = '/paymentSuccessPage';
  static const paymentFailurePage = '/paymentFailurePage';

  static const khaltiLoginPage = '/khaltiLogiPage';
  static const khaltiOtpPage = '/khaltiOtpPage';

  static const restaurantDetailPage = '/restaurantDetailPage';
  static const restaurantListPage = '/restaurantListPage';
  static const allRestaurantsPage = '/allRestaurantsPage';
  static const searchPage = '/searchPage';
  static const bbsearchPage = '/bbsearchPage';

  static const addressListPagePage = '/addressListPagePage';
  static const mapPage = '/mapPage';
  static const googleMapPage = '/googleMapPage';

  // BHAT BHATENI
  static const bbLandingPage = '/bbLandingPage';
  static const bbHomePage = '/bbHomePage';
  static const bbCategoryPage = '/bbCategoryPage';
  static const bbSubCategoryPage = '/bbSubCategoryPage';
  static const productDetailPage = '/productDetailPage';
  static const cartPage = '/cartPage';
  static const bbCheckoutPage = '/bbCheckout';
  static const bbOrderHistoryDetailPage = '/bbOrderHistoryDetailPage';
  static const featuredItemProductsPage = '/featuredItemProductsPage';

  // COMMON
  static const imagePreviewPage = '/imagePreviewPage';
  static const aboutPage = '/aboutPage';
  static const faqsPage = '/faqsPage';
  static const feedbackPage = '/feedbackPage';
}

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

// final authCubit = sl.get<AuthCubit>();
final router = GoRouter(
  // initialLocation: authCubit.state is Authenticated
  //     ? AppRoutes.landingPage
  //     : AppRoutes.splashPage,
  navigatorKey: NavigationService.navigatorKey,
  // observers: [ChuckerFlutter.navigatorObserver],

  initialLocation: AppRoutes.splashPage,
  routes: [
    GoRoute(
      name: "splash",
      path: AppRoutes.splashPage,
      pageBuilder: (context, state) => CupertinoPage(
          child: SplashPage(
        key: state.pageKey,
      )),
    ),
    GoRoute(
        name: 'login',
        path: AppRoutes.loginPage,
        pageBuilder: (context, state) {
          return CupertinoPage(
            child: LoginPage(
              key: state.pageKey,
            ),
          );
        }),
    GoRoute(
        name: 'signupPhone',
        path: AppRoutes.signupPhonePage,
        pageBuilder: (context, state) {
          return CupertinoPage(
            child: SignUpPhonePage(
              key: state.pageKey,
            ),
          );
        }),
    GoRoute(
        name: 'signupOtp',
        path: AppRoutes.signupOtpPage,
        pageBuilder: (context, state) {
          return CupertinoPage(
            child: SignupOtpPage(
              key: state.pageKey,
              signUpRequest: state.extra as SignUpRequest,
            ),
          );
        }),
    GoRoute(
      name: 'forgotPasswordPhone',
      path: AppRoutes.forgotPasswordPhonePage,
      pageBuilder: (context, state) =>
          _buildPage(state.pageKey, ForgotPasswordPhonePage()),
    ),
    GoRoute(
      name: 'forgotPasswordOtp',
      path: AppRoutes.forgotPasswordOtpPage,
      pageBuilder: (context, state) => _buildPage(
          state.pageKey,
          ForgotPasswordOtpPage(
            requestModel: state.extra as ForgotPasswordRequest,
          )),
    ),
    GoRoute(
      name: 'forgotPasswordReset',
      path: AppRoutes.forgotPasswordResetPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        ForgotPasswordResetPage(
          requestModel: state.extra as ForgotPasswordRequest,
        ),
      ),
    ),
    GoRoute(
        name: "landing",
        path: AppRoutes.landingPage,
        pageBuilder: (context, state) => CupertinoPage(
                child: LandingPage(
              key: state.pageKey,
            )),
        routes: [
          GoRoute(
            name: "loginpage",
            path: 'loginpage',
            pageBuilder: (context, state) =>
                _buildPage(state.pageKey, const LoginPage()),
          ),
        ]),
    GoRoute(
      name: "bag",
      path: AppRoutes.bagPage,
      pageBuilder: (context, state) =>
          _buildPage(state.pageKey, const BagPage()),
    ),
    GoRoute(
      name: "orderlist",
      path: AppRoutes.orderlistPage,
      pageBuilder: (context, state) =>
          _buildPage(state.pageKey, const OrderListPage()),
    ),
    GoRoute(
      name: "orderHistoryDetail",
      path: AppRoutes.orderHistoryDetailPage,
      pageBuilder: (context, state) => _buildPage(
          state.pageKey,
          OrderHistoryDetailPage(
            orderId: state.extra as String,
          )),
    ),
    GoRoute(
      name: "bagItemDetail",
      path: AppRoutes.bagItemDetailPage,
      pageBuilder: (context, state) => CupertinoPage(
        child: BagItemDetailPage(
          key: state.pageKey,
          bagItem: state.extra as BagItem,
        ),
      ),
    ),
    GoRoute(
      name: "restaurantList",
      path: AppRoutes.restaurantListPage,
      pageBuilder: (context, state) => CupertinoPage(
        child: RestaurantListPage(
          key: state.pageKey,
          restaurantCategoryName: state.extra as String,
        ),
      ),
    ),

    GoRoute(
      name: "allRestaurants",
      path: AppRoutes.allRestaurantsPage,
      pageBuilder: (context, state) => CupertinoPage(
        child: AllRestaurantsPage(
          key: state.pageKey,
          allRestaurants: state.extra as List<Restaurant>,
        ),
      ),
    ),
    GoRoute(
      name: "restaurantDetail",
      path: AppRoutes.restaurantDetailPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        RestaurantDetailPage(
          pageModel: state.extra as RestaurantDetailPageModel,
        ),
      ),
    ),

    GoRoute(
      name: "search",
      path: AppRoutes.searchPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const SearchPage(),
      ),
    ),

    GoRoute(
      name: "bbsearch",
      path: AppRoutes.bbsearchPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const BBSearchPage(),
      ),
    ),

    GoRoute(
      name: "addressList",
      path: AppRoutes.addressListPagePage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const AddressListPage(),
      ),
    ),
    GoRoute(
      name: "map",
      path: AppRoutes.mapPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        MapPage(position: state.extra as Position),
      ),
    ),

    GoRoute(
      name: "editProfile",
      path: AppRoutes.editProfilePage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        EditProfilePage(
          userModel: state.extra as UserModel,
        ),
      ),
    ),
    GoRoute(
      name: "changePassword",
      path: AppRoutes.changePasswordPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const ChangePasswordPage(),
      ),
    ),
    GoRoute(
      name: "checkout",
      path: AppRoutes.checkoutPage,
      pageBuilder: (context, state) => CupertinoPage(
        child: CheckoutPage(
          key: state.pageKey,
          bagItem: state.extra as BagItem,
        ),
      ),
    ),

    GoRoute(
      name: "paymentSelection",
      path: AppRoutes.paymentSelectionPage,
      pageBuilder: (context, state) => CupertinoPage(
        child: PaymentSelectionPage(
          key: state.pageKey,
          successRes: state.extra as PlaceOrderSuccessRes,
        ),
      ),
    ),

    GoRoute(
      name: "paymentVerification",
      path: AppRoutes.paymentVerificationPage,
      pageBuilder: (context, state) => CupertinoPage(
        child: PaymentVerificationPage(
          key: state.pageKey,
          pageModel: state.extra as PaymentVerificationPageModel,
        ),
      ),
    ),
    GoRoute(
      name: "khaltiLogin",
      path: AppRoutes.khaltiLoginPage,
      pageBuilder: (context, state) => CupertinoPage(
        child: KhaltiLoginPage(
          key: state.pageKey,
          orderSuccessRes: state.extra as PlaceOrderSuccessRes,
        ),
      ),
    ),
    GoRoute(
      name: "khaltiOtp",
      path: AppRoutes.khaltiOtpPage,
      pageBuilder: (context, state) =>
          _buildPage(state.pageKey, const AboutPage()),
    ),
    GoRoute(
        name: "paymentSuccess",
        path: AppRoutes.paymentSuccessPage,
        pageBuilder: (context, state) =>
            _buildPage(state.pageKey, const PaymentSuccessPage())),
    GoRoute(
        name: 'paymentFailure',
        path: AppRoutes.paymentFailurePage,
        pageBuilder: (context, state) =>
            _buildPage(state.pageKey, const PaymentFailurePage())),

    GoRoute(
      name: 'favourite',
      path: AppRoutes.favouritePage,
      pageBuilder: (context, state) =>
          _buildPage(state.pageKey, const FavouritePage()),
    ),

    // BHAT BHATENI
    GoRoute(
      name: 'bbLanding',
      path: AppRoutes.bbLandingPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const BBLandingPage(),
      ),
    ),
    GoRoute(
      name: 'bbHome',
      path: AppRoutes.bbHomePage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const BBHomePage(),
      ),
    ),
    GoRoute(
      name: "bbCategory",
      path: AppRoutes.bbCategoryPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const BBCategoryPage(),
      ),
    ),
    GoRoute(
      name: "bbSubCategory",
      path: AppRoutes.bbSubCategoryPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        BBSubCategoryPage(category: state.extra as BBCategory),
      ),
    ),
    GoRoute(
      name: "featuredItemProducts",
      path: AppRoutes.featuredItemProductsPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const FeaturedItemProductsPage(),
      ),
    ),
    GoRoute(
      name: "productDetail",
      path: AppRoutes.productDetailPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        ProductDetailPage(productId: state.extra as String),
      ),
    ),
    GoRoute(
      name: "cart",
      path: AppRoutes.cartPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const CartPage(),
      ),
    ),
    GoRoute(
      name: "bbCheckout",
      path: AppRoutes.bbCheckoutPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        BBCheckoutPage(
          cartResponse: state.extra as CartResponse,
        ),
      ),
    ),
    GoRoute(
      name: "bbOrderHistoryDetail",
      path: AppRoutes.bbOrderHistoryDetailPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        BBOrderHistoryDetailPage(
          orderHistory: state.extra as BBOrderHistory,
        ),
      ),
    ),

    // COMMON PAGES ==
    GoRoute(
      name: "imagePreview",
      path: AppRoutes.imagePreviewPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        ImagePreviewPage(images: state.extra as List<String>),
      ),
    ),

    GoRoute(
      name: "about",
      path: AppRoutes.aboutPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const AboutPage(),
      ),
    ),
    GoRoute(
      name: "faqs",
      path: AppRoutes.faqsPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const FAQsPage(),
      ),
    ),
    GoRoute(
      name: "feedback",
      path: AppRoutes.feedbackPage,
      pageBuilder: (context, state) => _buildPage(
        state.pageKey,
        const FeedbackPage(),
      ),
    ),
    // deeplinks
  ],
  redirect: (state) {
    // debugPrint('redirect ran');
    // final authState = authCubit.state;
    // final loggedIn = authState is Authenticated;
    // final loggingIn = state.subloc == AppRoutes.loginPage;
    // if (!loggedIn) return loggingIn ? null : AppRoutes.loginPage;
    // if (loggingIn) return AppRoutes.landingPage;
    return null;
  },
  errorPageBuilder: (context, state) {
    return CupertinoPage(
      key: state.pageKey,
      child: const Scaffold(
        body: Center(
          child: Text("Wrong route"),
        ),
      ),
    );
  },
);

Page _buildPage(LocalKey key, Widget page) {
  return CupertinoPage(
    key: key,
    child: page,
  );
}
