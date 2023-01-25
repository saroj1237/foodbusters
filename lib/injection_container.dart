import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:foodbusters/core/app/app_prefes.dart';
import 'package:foodbusters/core/helpers/location_helper.dart';
import 'package:foodbusters/core/network_services/interceptor.dart';
import 'package:foodbusters/core/network_services/network_info.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/core/services/firebase/firebase_service.dart';
import 'package:foodbusters/core/services/firebase/local_notification_service.dart';
import 'package:foodbusters/features/address_settings/data/datasources/address_remote_datasource.dart';
import 'package:foodbusters/features/address_settings/data/repositories/address_repository_impl.dart';
import 'package:foodbusters/features/address_settings/domain/repositories/address_repository.dart';
import 'package:foodbusters/features/address_settings/domain/usecases/address_usecase.dart';
import 'package:foodbusters/features/address_settings/presentataion/bloc/address_bloc.dart';
import 'package:foodbusters/features/address_settings/presentataion/bloc/search_google_place/search_google_place_cubit.dart';
import 'package:foodbusters/features/authentication/forgot_password/data/remote_datasources/forgot_password_remote_datasource.dart';
import 'package:foodbusters/features/authentication/forgot_password/data/repositories/forgot_password_repository_impl.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/repositories/forgot_password_repository.dart';
import 'package:foodbusters/features/authentication/forgot_password/domain/usecases/forgot_password_usecase.dart';
import 'package:foodbusters/features/authentication/forgot_password/presentation/bloc/forgot_password_bloc.dart';
import 'package:foodbusters/features/authentication/login/data/datasources/login_remote_datasource.dart';
import 'package:foodbusters/features/authentication/login/data/repositories/login_repository_impl.dart';
import 'package:foodbusters/features/authentication/login/domain/repositories/login_repository.dart';
import 'package:foodbusters/features/authentication/login/domain/usecases/login_usecase.dart';
import 'package:foodbusters/features/authentication/login/presentation/bloc/login_bloc.dart';
import 'package:foodbusters/features/authentication/signup/data/datasources/signup_remote_data_source.dart';
import 'package:foodbusters/features/authentication/signup/data/repositories/signup_repository_impl.dart';
import 'package:foodbusters/features/authentication/signup/domain/repositories/signup_repository.dart';
import 'package:foodbusters/features/authentication/signup/domain/usecases/sign_up_usecase.dart';
import 'package:foodbusters/features/authentication/signup/presentation/bloc/signup_bloc.dart';
import 'package:foodbusters/features/bag/data/datasources/bag_remote_datasource.dart';
import 'package:foodbusters/features/bag/data/repositories/bag_repository_impl.dart';
import 'package:foodbusters/features/bag/domain/repositories/bag_repository.dart';
import 'package:foodbusters/features/bag/domain/usecases/bag_usecase.dart';
import 'package:foodbusters/features/bag/presentation/bloc/bag_bloc.dart';
import 'package:foodbusters/features/banner/banner_cubit/banner_cubit.dart';
import 'package:foodbusters/features/banner/banner_repository.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/data/datasources/cart_remote_datasource.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/data/repositories/cart_repository_impl.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/repositories/cart_repository.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/usecases/delete_cart_item_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/usecases/get_cart_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/bloc/cart_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/data/datasources/bb_category_remote_datasource.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/data/repositories/bb_category_repository_impl.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/repositories/bb_category_repository.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/usecases/bb_category_slider_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/usecases/bb_category_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/usecases/bb_subcategory_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bb_category_slider/bloc/bb_category_slider_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bloc/bb_category_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bloc/category_search/category_search_cubit.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bloc/sub_category/sub_category_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/order/data/datasources/bb_order_remote_datasource.dart';
import 'package:foodbusters/features/bhat_bhateni/order/data/repositories/bb_order_repository_impl.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/repositories/bb_order_repository.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/usecases/bb_order_history_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/usecases/place_order_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/bloc/b_b_order_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/bloc/bb_delivery_charge_cubit/bb_delivery_charge_cubit.dart';
import 'package:foodbusters/features/bhat_bhateni/order/presentation/bloc/bb_order_history/bborder_history_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/pages/homepage_widgets/deals/bloc/bb_deals_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/data/datasources/product_remote_datasource.dart';
import 'package:foodbusters/features/bhat_bhateni/product/data/repositories/product_repository_impl.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/repositories/product_repository.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/all_product_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/bb_deals_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/bb_featured_item_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/category_product_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/featured_item_products_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/domain/usecases/product_detail_usecase.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/featured_item/bb_featured_item_cubit.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/product_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/product_detail/product_detail_cubit.dart';
import 'package:foodbusters/features/bhat_bhateni/search/data/datasources/search_remote_datasouce.dart';
import 'package:foodbusters/features/bhat_bhateni/search/data/repositories/search_repository_impl.dart';
import 'package:foodbusters/features/bhat_bhateni/search/domain/repositories/search_repository.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:foodbusters/features/common/bloc/connectivity/connectivity_cubit.dart';
import 'package:foodbusters/features/common/bloc/current_position/current_position_cubit.dart';
import 'package:foodbusters/features/faq_feedback/data/datasources/faq_feedback_remote_datasource.dart';
import 'package:foodbusters/features/faq_feedback/domain/usecases/faq_feedback_usecase.dart';
import 'package:foodbusters/features/faq_feedback/presentation/faq_bloc/faq_bloc.dart';
import 'package:foodbusters/features/favourites/data/datasources/fav_remote_datasource.dart';
import 'package:foodbusters/features/favourites/data/repositories/fav_repository_impl.dart';
import 'package:foodbusters/features/favourites/domain/repositories/fav_repository.dart';
import 'package:foodbusters/features/favourites/domain/usecases/fav_usecase.dart';
import 'package:foodbusters/features/favourites/presentation/bloc/favourite_bloc.dart';
import 'package:foodbusters/features/order/data/datasources/order_remote_datasource.dart';
import 'package:foodbusters/features/order/data/repositories/order_repository_impl.dart';
import 'package:foodbusters/features/order/domain/repositories/order_repository.dart';
import 'package:foodbusters/features/order/domain/usecases/coupon_usecase.dart';
import 'package:foodbusters/features/order/domain/usecases/delivery_fee_usecase.dart';
import 'package:foodbusters/features/order/domain/usecases/order_history_usecase.dart';
import 'package:foodbusters/features/order/domain/usecases/order_usecase.dart';
import 'package:foodbusters/features/order/presentation/bloc/coupon/coupon_cubit.dart';
import 'package:foodbusters/features/order/presentation/bloc/cubit/order_history_cubit.dart';
import 'package:foodbusters/features/order/presentation/bloc/delivery_fee_cubit/delivery_fee_cubit.dart';
import 'package:foodbusters/features/order/presentation/bloc/order_bloc.dart';
import 'package:foodbusters/features/payment/data/datasources/payment_remote_datasource.dart';
import 'package:foodbusters/features/payment/data/repositories/payment_repository_impl.dart';
import 'package:foodbusters/features/payment/domain/repositories/payment_repository.dart';
import 'package:foodbusters/features/payment/domain/usecases/cod_pay_usecase.dart';
import 'package:foodbusters/features/payment/khalti/data/datasources/khalti_remote_datasource.dart';
import 'package:foodbusters/features/payment/khalti/data/repositories/khalti_repository_impl.dart';
import 'package:foodbusters/features/payment/khalti/domain/repositories/khalti_repository.dart';
import 'package:foodbusters/features/payment/khalti/domain/usecases/khalti_usecase.dart';
import 'package:foodbusters/features/payment/khalti/presentation/bloc/khalti_bloc.dart';
import 'package:foodbusters/features/payment/presentation/bloc/payment/payment_bloc.dart';
import 'package:foodbusters/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:foodbusters/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:foodbusters/features/profile/domain/repositories/profile_repository.dart';
import 'package:foodbusters/features/profile/domain/usecases/profile_usecase.dart';
import 'package:foodbusters/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:foodbusters/features/restaurant/new_partners/data/datasources/partner_rest_remote_datasource.dart';
import 'package:foodbusters/features/restaurant/new_partners/data/repositories/partner_rest_repository_impl.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/repositories/partner_rest_repository.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/usecases/usecase.dart';
import 'package:foodbusters/features/restaurant/new_partners/presentation/bloc/partner_rest_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/data/datasources/restaurant_remote_datasource.dart';
import 'package:foodbusters/features/restaurant/restaurant/data/repositories/restaurant_repository_impl.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/repositories/restaurant_repository.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/all_restaurant_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/deals_and_offer_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/featured_item_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/featured_restaurant_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/restaurant_foods_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/restaurant_offer_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/usecases/restaurant_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/all_restaurant/all_restaurant_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/deals_and_offer/deals_and_offer_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/featured_item/featured_item_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/featured_restaurants/featured_restaurant_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/menu_search_cubit/menu_search_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_menu/restaurant_menu_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_offer/restaurant_offer_cubit.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/data/datasources/resturant_category_remote_datasource.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/data/repositories/resturant_category_repository_impl.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/repositories/resturant_category_repository.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/usecases/resturant_category_usecase.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/presentation/bloc/restaurant_category_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/presentation/bloc/restaurant_list_bloc/restaurant_list_bloc.dart';
import 'package:foodbusters/features/search/data/datasources/search_remote_datasouce.dart';
import 'package:foodbusters/features/search/data/repositories/search_repository_impl.dart';
import 'package:foodbusters/features/search/domain/repositories/search_repository.dart';
import 'package:foodbusters/features/search/domain/usecases/search_usecase.dart';
import 'package:foodbusters/features/search/presentation/bloc/trending_search_bloc.dart';
import 'package:foodbusters/features/search/presentation/search_bloc/search_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/bhat_bhateni/order/domain/usecases/bb_order_history_detail_usecase.dart';
import 'features/bhat_bhateni/product/presentation/bloc/featured_product/featured_product_bloc.dart';
import 'features/bhat_bhateni/search/domain/usecases/search_usecase.dart';
import 'features/bhat_bhateni/search/presentation/bloc/bb_search_bloc/search_bloc.dart';
import 'features/bhat_bhateni/search/presentation/bloc/trending_search_bloc.dart';
import 'features/faq_feedback/data/repositories/faq_feedback_repository_impl.dart';
import 'features/faq_feedback/domain/repositories/faq_feedback_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  sl.registerFactory<GlobalKey<ScaffoldState>>(() => scaffoldKey);
  // http
  // sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton<Dio>(() => Dio());
  // Local Storage
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();
  sl.registerLazySingleton<FlutterSecureStorage>(() => secureStorage);

  sl.registerSingletonAsync<SharedPreferences>(
      () async => SharedPreferences.getInstance());
  //Firebase services
  sl.registerLazySingleton<FirebaseService>(() => FirebaseService());
  sl.registerLazySingleton<LocalNotificationService>(
      () => LocalNotificationService());

  sl.registerLazySingleton<ImagePicker>(() => ImagePicker());
  //app preferences instance
  sl.registerSingletonWithDependencies<AppPreferences>(
    () => AppPreferences(
      sharedPreferences: sl<SharedPreferences>(),
      secureStorage: sl<FlutterSecureStorage>(),
    ),
    dependsOn: [SharedPreferences],
  );
  // Helpers
  sl.registerLazySingleton(() => LocationHelper(sl()));

  // internet connection checker
  sl.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());
  //netowk singletons
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  final Dio dio = Dio();
  sl.registerSingletonWithDependencies<DioClient>(
      () => DioClient(dio: dio, baseUrl: ApiUrl.baseUrl, interceptors: [
            FoodbustersInterceptor(
              secureStorage: sl(),
            )
          ]),
      dependsOn: [SharedPreferences]);

  //======================== data sources ========================
  sl.registerLazySingleton<SignUpRemoteDataSource>(
      () => SignUpRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<ProfileRemoteDataSource>(
      () => ProfileRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<ResturantCategoryRemoteDataSource>(
      () => ResturantCategoryRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<RestaurantRemoteDataSource>(
      () => RestaurantRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<ForgotPasswordRemoteDatasource>(
      () => ForgotPasswordRemoteDatasourceImpl(sl()));
  sl.registerLazySingleton<BagRemoteDataSource>(
      () => BagRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<PartnerRestaurantRemoteDataSource>(
      () => PartnerRestaurantRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<AddressRemoteDatasource>(
      () => AddressRemoteDatasourceImpl(sl()));
  sl.registerLazySingleton<OrderRemoteDataSource>(
      () => OrderRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<PaymentRemoteDatasource>(
      () => PaymentRemoteDatasourceImpl(sl()));
  sl.registerLazySingleton<SearchRemoteDatasource>(
      () => SearchRemoteDatasourceImpl(sl()));
  sl.registerLazySingleton<FAQFeedbackRemoteDataSource>(
      () => FAQFeedbackRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<FavRemoteDatasource>(
      () => FavRemoteDatasourceImpl(sl()));

  // bb remotedatasources
  sl.registerLazySingleton<BBCategoryRemoteDataSource>(
      () => BBCategoryRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<ProductRemoteDatasource>(
      () => ProductRemoteDatasourceImpl(sl()));
  sl.registerLazySingleton<CartRemoteDatasource>(
      () => CartRemoteDatasourceImpl(sl()));
  sl.registerLazySingleton<KhaltiRemoteDatasource>(
      () => KhaltiRemoteDatasourceImpl(sl()));
  sl.registerLazySingleton<BBOrderRemoteDatasource>(
      () => BBOrderRemoteDatasourceImpl(sl()));

  sl.registerLazySingleton<BBSearchRemoteDatasource>(
      () => BBSearchRemoteDatasourceImpl(sl()));

  // =========================== repositories =======================
  sl.registerLazySingleton<SignUpRepository>(
      () => SignUpRepositoryImpl(sl(), sl()));
  sl.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(remoteDataSource: sl(), appPreferences: sl()));
  sl.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<ResturantCategoryRepository>(
      () => ResturantCategoryRepositoryImpl(sl()));
  sl.registerLazySingleton<RestaurantRepository>(
      () => RestaurantRepositoryImpl(sl()));
  sl.registerLazySingleton<ForgotPasswordRepository>(
      () => ForgotPasswordRepositoryImpl(sl()));
  sl.registerLazySingleton<BagRepository>(() => BagRepositoryImpl(sl(), sl()));
  sl.registerLazySingleton<PartnerRestaurantRepository>(
      () => PartnerRestaurantRepositoryImpl(sl()));
  sl.registerLazySingleton<AddressRepository>(
      () => AddressRepositoryImpl(sl()));
  sl.registerLazySingleton<OrderRepository>(() => OrderRepositoryImpl(sl()));
  sl.registerLazySingleton<PaymentRepository>(
      () => PaymentRepositoryImpl(sl()));
  sl.registerLazySingleton<KhaltiRepository>(() => KhaltiRepositoryImpl(sl()));
  sl.registerLazySingleton<SearchRepository>(() => SearchRepositoryImpl(sl()));
  sl.registerLazySingleton<FAQFeedbackRepository>(
      () => FAQFeedbakRepositoryImpl(sl()));
  sl.registerLazySingleton<FavRepository>(() => FavRepositoryImpl(sl()));

  // bb categories
  sl.registerLazySingleton<BBCategoryRepository>(
      () => BBCategoryRepositoryImpl(sl()));
  sl.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(sl()));
  sl.registerLazySingleton<CartRepository>(() => CartRepositoryImpl(sl()));
  sl.registerLazySingleton<BBOrderRepository>(
      () => BBOrderRepositoryImpl(sl()));
  sl.registerLazySingleton(() => BannerRepository(sl()));
  sl.registerLazySingleton<BBSearchRepository>(
      () => BBSearchRepositoryImpl(sl()));

  //========================= usecases ========================
  sl.registerLazySingleton(() => SignUpUseCase(sl()));
  sl.registerLazySingleton(() => LoginUseCase(sl()));

  sl.registerLazySingleton(() => ProfileUseCase(repository: sl()));
  sl.registerLazySingleton(() => UpdateProfileUsecase(repository: sl()));
  sl.registerLazySingleton(() => ChangePasswordUsecase(repository: sl()));

  sl.registerLazySingleton(() => ResturantCategoryUsecase(sl()));
  sl.registerLazySingleton(() => RestaurantUsecase(sl()));
  sl.registerLazySingleton(() => AllRestaurantUsecase(sl()));
  sl.registerLazySingleton(() => DealsAndOfferUsecase(sl()));
  sl.registerLazySingleton(() => FeaturedRestaurantUsecase(sl()));
  sl.registerLazySingleton(() => RestaurantFoodsUsecase(sl()));
  sl.registerLazySingleton(() => ForgotPasswordUsecase(repository: sl()));
  sl.registerLazySingleton(() => BagUsecase(sl()));
  sl.registerLazySingleton(() => PartnerRestaurantUsecase(sl()));
  sl.registerLazySingleton(() => AddressUsecase(sl()));
  sl.registerLazySingleton(() => OrderUsecase(sl()));
  sl.registerLazySingleton(() => DeliveryFeeUsecase(sl()));
  sl.registerLazySingleton(() => CouponUsecase(sl()));
  sl.registerLazySingleton(() => OrderHistoryUsecase(sl()));
  sl.registerLazySingleton(() => OrderHistoryDetailUsecase(sl()));
  sl.registerLazySingleton(() => KhaltiUsecase(sl()));
  sl.registerLazySingleton(() => PaymentUsecase(sl()));
  sl.registerLazySingleton(() => FeaturedItemUsecase(sl()));
  sl.registerLazySingleton(() => SearchUsecase(sl()));
  sl.registerLazySingleton(() => RestaurantSearchUsecase(sl()));
  sl.registerLazySingleton(() => FAQUsecase(sl()));
  sl.registerLazySingleton(() => TrendingSearchUsecase(sl()));
  //bb usecases
  sl.registerLazySingleton(() => BBCategoryUsecase(sl()));
  sl.registerLazySingleton(() => BBSubCategoryUsecase(sl()));
  sl.registerLazySingleton(() => CategoryProductsUsecase(sl()));
  sl.registerLazySingleton(() => AllProductsUsecase(sl()));
  sl.registerLazySingleton(() => AddToCartUsecase(sl()));
  sl.registerLazySingleton(() => GetCartUsecase(sl()));
  sl.registerLazySingleton(() => BBPlaceOrderUsecase(sl()));
  sl.registerLazySingleton(() => BBCategorySliderUsecase(sl()));
  sl.registerLazySingleton(() => BBDealsUsecase(sl()));
  sl.registerLazySingleton(() => BBTrendingSearchUsecase(sl()));
  sl.registerLazySingleton(() => BBSearchUsecase(sl()));

  // ========================== BLOC ========================
  sl.registerFactory<CurrentPositionCubit>(() => CurrentPositionCubit(sl()));
  sl.registerFactory<BottomNavCubit>(() => BottomNavCubit());
  sl.registerFactory<ConnectivityCubit>(
      () => ConnectivityCubit(networkInfo: sl()));
  sl.registerFactory<SignupBloc>(() => SignupBloc(signupUseCase: sl()));
  sl.registerFactory<LoginBloc>(() => LoginBloc(sl()));
  sl.registerFactory<AuthCubit>(
      () => AuthCubit(appPreferences: sl(), dioClient: sl()));
  sl.registerFactory<ProfileBloc>(() => ProfileBloc(
      profileUseCase: sl(),
      updateProfileUsecase: sl(),
      changePasswordUsecase: sl()));
  sl.registerFactory<RestaurantCategoryBloc>(
      () => RestaurantCategoryBloc(sl()));
  sl.registerFactory<RestaurantBloc>(() => RestaurantBloc(sl()));
  sl.registerFactory<RestaurantOfferCubit>(() => RestaurantOfferCubit(
        RestaurantOfferUsecase(sl()),
      ));
  sl.registerFactory<AllRestaurantCubit>(
      () => AllRestaurantCubit(usecase: sl()));
  sl.registerFactory<DealsAndOfferCubit>(() => DealsAndOfferCubit(sl()));
  sl.registerFactory<FeaturedRestaurantBloc>(
      () => FeaturedRestaurantBloc(sl(), sl()));
  sl.registerFactory<ForgotPasswordBloc>(() => ForgotPasswordBloc(sl()));
  sl.registerFactory<BagBloc>(() => BagBloc(sl()));
  sl.registerFactory<PartnerRestBloc>(() => PartnerRestBloc(sl()));
  sl.registerFactory<SearchGooglePlaceCubit>(
      () => SearchGooglePlaceCubit(locationHelper: sl()));
  sl.registerFactory<AddressBloc>(
      () => AddressBloc(usecase: sl(), locationHelper: sl()));
  sl.registerFactory<OrderBloc>(() => OrderBloc(sl()));
  sl.registerFactory<DeliveryFeeCubit>(() => DeliveryFeeCubit(sl()));
  sl.registerFactory<CouponCubit>(() => CouponCubit(sl()));
  sl.registerFactory<OrderHistoryCubit>(
      () => OrderHistoryCubit(usecase: sl(), detailUsecase: sl()));
  sl.registerFactory<KhaltiBloc>(() => KhaltiBloc(sl()));
  sl.registerFactory<PaymentBloc>(() => PaymentBloc(paymentUsecase: sl()));
  sl.registerFactory<BannerCubit>(() => BannerCubit(sl()));
  // sl.registerFactory<OfferSliderCubit>(() => OfferSliderCubit(sl()));
  sl.registerFactory<FeaturedItemBloc>(() => FeaturedItemBloc(sl()));
  sl.registerFactory<SearchBloc>(() => SearchBloc(searchUsecase: sl()));
  sl.registerFactory<FAQBloc>(() => FAQBloc(
        faqUsecase: sl(),
        addFeedBackUsecase: AddFeedBackUsecase(sl()),
      ));

  sl.registerFactory<RestaurantListBloc>(() =>
      RestaurantListBloc(resturantsListUsecase: ResturantsListUsecase(sl())));

  sl.registerFactory<RestaurantMenuBloc>(() => RestaurantMenuBloc(sl()));
  sl.registerFactory<TrendingSearchBloc>(
      () => TrendingSearchBloc(trendingSearchUsecase: sl()));
  sl.registerFactory<FavouriteBloc>(() => FavouriteBloc(
        getFavRestaurantUseCase: GetFavRestaurantUseCase(sl()),
        addFavRestaurantUsecase: AddFavRestaurantUsecase(sl()),
      ));

  //bb blocs
  sl.registerFactory<BBTrendingSearchBloc>(
      () => BBTrendingSearchBloc(trendingSearchUsecase: sl()));
  sl.registerFactory<BBSearchBloc>(() => BBSearchBloc(searchUsecase: sl()));
  sl.registerFactory<BbCategoryBloc>(
      () => BbCategoryBloc(categoryUsecase: sl()));
  sl.registerFactory<SubCategoryBloc>(() => SubCategoryBloc(sl()));
  sl.registerFactory<ProductBloc>(() =>
      ProductBloc(categoryProductsUsecase: sl(), allProductsUsecase: sl()));
  sl.registerFactory<CartBloc>(() => CartBloc(
        addToCartUsecase: sl(),
        getCartUsecase: sl(),
        deleteCartItemUsecase: DeleteCartItemUsecase(sl()),
      ));
  sl.registerFactory<BBOrderBloc>(() => BBOrderBloc(sl()));
  sl.registerFactory<CategorySearchCubit>(
      () => CategorySearchCubit(remoteDataSource: sl()));

  sl.registerFactory<BbCategorySliderBloc>(() => BbCategorySliderBloc(sl()));
  sl.registerFactory<BbDealsBloc>(() => BbDealsBloc(sl()));
  sl.registerFactory<BbDeliveryChargeCubit>(
      () => BbDeliveryChargeCubit(CalulateBBDeliveryFeeUsecase(sl())));
  sl.registerLazySingleton<BBFeaturedItemCubit>(
      () => BBFeaturedItemCubit(BBFeaturedItemUsecase(sl())));
  sl.registerLazySingleton<ProductDetailCubit>(() =>
      ProductDetailCubit(productDetailUsecase: ProductDetailUsecase(sl())));
  sl.registerLazySingleton<FeaturedProductBloc>(
      () => FeaturedProductBloc(FeaturedItemProductsUsecase(sl())));
  sl.registerFactory<BborderHistoryBloc>(() => BborderHistoryBloc(
      BbOrderHistoryUsecase(sl()), BbOrderHistoryDetailUsecase(sl())));
  sl.registerFactory<MenuSearchCubit>(() => MenuSearchCubit(sl()));
}
