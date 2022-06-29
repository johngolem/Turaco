

//here, we have our constants that are used severally within the app. 
//Incase we need to change something such as title of version of the app, we change once.



// ignore_for_file: constant_identifier_names

class AppConstants {
  static const String APP_NAME = "Turaco";
  static const String APP_VERSION = "v1";

  static const String BASE_URL = "https://turaco.nottech.app/";
  // static const String BASE_URL = "http://mvs.bslmeiyu.com/";
  static const String POPULAR_PRODUCT_URI = "api/v1/vendors/<vendor-id>/products";
  static const String POPULAR2_PRODUCT_URI = "api/v1/products/popular";
  static const String POPULAR_CATEGORY_URI = "api/v1/products/recommended";
  static const String RECOMMENDED_PRODUCT_URI = "to be added ";
  static const String login_URI = "api/auth/login";
  static const String categories_URI = "api/v1/item-categories";
  static const String register_URI = "api/auth/register";
  static const String forgot_password_URI = "to be added ";
   static const String Upload_URL = "/uploads/";


  static const String TOKEN = "token";
  static const String EMAIL = "";
  static const String PASSWORD = "";
}
