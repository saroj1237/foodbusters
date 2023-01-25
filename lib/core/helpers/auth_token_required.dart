import 'package:foodbusters/core/resources/resources.dart';

bool requiredAuthToken(String url) {
  if (url == ApiUrl.getOtpForRegister ||
      url == ApiUrl.verifyRegisterOtp ||
      url == ApiUrl.initLogin ||
      url == ApiUrl.getResturantCategories ||
      url == ApiUrl.getRestaurantsList ||
      url == ApiUrl.getPartnerRestaurantList ||
      url == ApiUrl.getRestaurantDetail ||
      url == ApiUrl.getRestaurantMenu ||
      url == ApiUrl.getBBCategoryList ||
      url == ApiUrl.getBBSubCategoryList ||
      url == ApiUrl.getSubCategoryProducts ||
      url == ApiUrl.getAllProducts ||
      url == ApiUrl.getOfferAndDealsFoodsList ||
      url == ApiUrl.getFetaturedRestaurants ||
      url == ApiUrl.banners ||
      url == ApiUrl.getFaq ||
      url == ApiUrl.getFeaturedItems) {
    return false;
  } else {
    return true;
  }
}
