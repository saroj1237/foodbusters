class ApiUrl {
  // base url
  // static const baseUrl = 'http://139.59.40.19/';
  static const baseUrl = 'https://api.adeyelta.com/';

  static const banners = 'restaurant/banners';

  // signup
  static const getOtpForRegister = 'user/signup';
  static const verifyRegisterOtp = 'user/verifyuser';
  // login in
  static const initLogin = 'user/login';
  static const logout = 'user/logout/{deviceToken}';
  // forgot password
  static const forgotPasswordOtp = 'user/forgetpassword';
  static const forgotPasswordReset = 'user/resetpassword';
  // profile
  static const getUserProfile = 'user/profile';
  static const updateProfile = 'user/profile';
  // resturant
  static const getResturantCategories = 'restaurant/restaurant-category';
  static const getRestaurantsList = 'restaurant/restaurant/category/{id}';
  static const getAllRestaurants = 'restaurant/restaurant';
  static const getPartnerRestaurantList = 'restaurant/restaurant/new-partners';
  static const getRestaurantDetail = 'restaurant/restaurant/{id}';
  static const getRestaurantMenu = 'restaurant/restaurant-menu/{id}';
  static const getRestaurantOffer = 'restaurant/restaurant-offer/{id}';
  static const getOfferAndDealsFoodsList = 'restaurant/food/offers';
  static const getFetaturedRestaurants = 'restaurant/restaurant/featured';
  static const getRestaurantFoods = 'restaurant/food/restaurant/{restId}';
  static const getFeaturedItems = 'restaurant/featured-item';

  static const search = 'restaurant/search?query={query}';
  static const restaurantSearch = 'restaurant/search/';

  // favourites
  static const getFavRestaurants = 'user/favourite/restaurant';
  static const addFavRestaurant = 'user/favourite/';

  // cart
  static const addItemTobag = 'cart/restaurant/cartitem/{id}';
  static const getBagItems = 'cart/mycarts/restaurant';
  static const removeBagItem = 'cart/clearcart/restaurant/{id}';
  static const removeFood = 'cart/restaurant/cartitem/{foodId}';

  // address
  /// For adding a address[POST] and getting addresslist [GET]
  static const address = 'user/address';

  /// For deleting a address[DELETE]
  static const deleteAddress = 'user/address/{id}';

  // order
  static const placeOrder =
      'order/checkout/restaurant/{id}'; // id-> restaurant id
  static const getDeliveryFee = 'order/delivery-charge';
  static const applyCouponCode = 'order/get-coupon';

  static const getOrderHistory = 'order/myorders';
  static const getOrderHistoryDetail = 'order/myorders/{id}';
  static const verifyPayment = 'order/mobile-payment';

  static const verifyEsewaTrnx = 'order/mobile/verifyesewa';
  static const verifyKhaltiTrnx = 'order/khalti/verify';

  //faq
  static const getFaq = "order/get-faq";
  static const addFeedback = "restaurant/feedback";

  //trending searches and recent searches
  static const trendingSearches = "restaurant/trending-search";

  // BHAT BAHTENI ========================
  //homepage
  static const getBBCategoryList = 'bbsm/product-category';

  static const getbbSlider = 'bbsm/banner';
  static const getbbDeals = 'bbsm/best-deals';

  static const getBBSubCategoryList = 'bbsm/category/product-sub-category/{id}';
  static const getSubCategoryProducts = 'bbsm/product-all-sub-category/{id}';
  static const getBBFeaturedItems = 'bbsm/featured-item';
  static const getBBFeaturedItemProducts = 'bbsm/featured-item/{id}';

  static const getAllProducts = 'bbsm/product';
  static const getProductDetail = 'bbsm/product/{id}';
  static const bbSearch = 'bbsm/search?query={query}';
  static const bbTrending = 'bbsm/search/trending-search';
  static const addToCart = 'cart/bbsm/cartitem/{pid}';
  static const getCartItems = 'cart/mycart/bbsm';
  static const bbPlaceOrder = 'order/checkout/bbsm';
}
