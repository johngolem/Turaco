import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turac/controllers/auth_controller.dart';
import 'package:turac/controllers/popular_category.dart';
import 'package:turac/controllers/popular_product_controller.dart';
import 'package:turac/data/api/api_client.dart';
import 'package:turac/repository/auth_repo.dart';
import 'package:turac/repository/categories_repo.dart';
import 'package:turac/repository/popular_product_repo.dart';
import 'package:turac/utils/app_constants.dart';

import '../controllers/Item_controller.dart';
import '../controllers/categories_controller.dart';
import '../controllers/vendor_controller.dart';
import '../repository/item_repo.dart';
import '../repository/popular_category_repo.dart';
import '../repository/vendor_repo.dart';

// we load the dependancies to this file
Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);

  //load the api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL, sharedPreferences:Get.find()));
  Get.lazyPut(() => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => CategoryRepo(apiClient: Get.find()));
  Get.lazyPut(() => ItemRepo(apiClient: Get.find()));
  Get.lazyPut(() => VendorRepo(apiClient: Get.find()));




  //load all the repositories here
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => PopularCategoryRepo(apiClient: Get.find()));
  Get.lazyPut(() => ItemRepo(apiClient: Get.find()));
  




  //load the controllers here
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => PopularCategoryController(popularCategoryRepo: Get.find()));
  // Get.lazyPut(() => CategoryController(categoryRepo: Get.find()));
  Get.lazyPut(() => Authcontroller(authRepo: Get.find()));
  Get.lazyPut(() => Categorycontroller(categoryRepo: Get.find()));
  Get.lazyPut(() => Itemcontroller(itemRepo: Get.find()));
  Get.lazyPut(() => Vendorcontroller(vendorRepo: Get.find()));
}
 