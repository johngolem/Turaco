import 'package:get/route_manager.dart';
import 'package:turac/home/new%20login/login.dart';
import 'package:turac/pages/main_product.dart';
import 'package:turac/pages/product/popular_product_detail.dart';

import '../pages/category_main.dart';
import '../pages/product/item_main.dart';

// info on routes is at 8.04.42

class RouteHelper {
  static const String initial = "/";
  static const String popularDetail = "/product-detail";
  static const String popularCategory = "/popular-Category";
  static const String loginpage = "/login-page";
  static const String categoryPage = "/category-Page";
  static const String itemPage = "/item-Page";

  static String getinitial() => '$initial';
  static String getpopularDetail() => '$popularDetail';
  static String getpopularCategory() => '$popularCategory';
  static String getLoginPage() => '$loginpage';
  static String getMainCategoryPage() => '$categoryPage';
  static String getItemPage() => '$itemPage';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainProductPage()),
    // GetPage(name: popularDetail, page: () => PopularProductDetail()),

    GetPage(
        name: popularDetail,
        page: () {
          return PopularProductDetail();
        },
        transition: Transition.fadeIn),

    GetPage(
        name: popularCategory,
        page: () {
          return PopularProductDetail();
        },
        transition: Transition.fadeIn),

    GetPage(
        name: loginpage,
        page: () {
          return LoginPage();
        }),
    GetPage(
        name: categoryPage,
        page: () {
          return MainCategoryPage();
        },
        transition: Transition.fadeIn),
    GetPage(
        name: itemPage,
        page: () {
          return ItemPage();
        },
        transition: Transition.fadeIn),
  ];
}

// // home: PopularProductDetail(),
      // // home:LoginPage(),
      // // home:SignUpPage(),
      // // home:CategoryDetail(),
      // // home:AccountProfile(),
      // // home: SignIn(),
