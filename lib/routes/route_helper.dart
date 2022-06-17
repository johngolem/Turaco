import 'package:get/route_manager.dart';
import 'package:turac/pages/main_product.dart';
import 'package:turac/pages/product/popular_product_detail.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularDetail = "/product-detail";

  static List<GetPage> routes = [
    GetPage(name: "/", page: ()=>MainProductPage()),
    GetPage(name:popularDetail, page: ()=>PopularProductDetail()),

  ];
}

// // home: PopularProductDetail(),
      // // home:LoginPage(),
      // // home:SignUpPage(),
      // // home:CategoryDetail(),
      // // home:AccountProfile(),
      // // home: SignIn(),
