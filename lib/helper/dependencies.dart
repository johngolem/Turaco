import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turac/controllers/auth_controller.dart';
import 'package:turac/controllers/popular_product_controller.dart';
import 'package:turac/data/api/api_client.dart';
import 'package:turac/repository/auth_repo.dart';
import 'package:turac/repository/popular_product_repo.dart';
import 'package:turac/utils/app_constants.dart';

// we load the dependancies to this file
Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);

  //load the api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));

  //load all the repositories here
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //load the controllers here
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => Authcontroller(authRepo: Get.find()));
}
