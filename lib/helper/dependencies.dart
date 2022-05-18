import 'package:get/get.dart';
import 'package:turac/controllers/popular_product_controller.dart';
import 'package:turac/data/api/api_client.dart';
import 'package:turac/repository/popular_product_repo.dart';

// we load the dependancies to this file
Future<void> init() async {



  
  //load the api client
  Get.lazyPut(
      () => ApiClient(appBaseUrl: "to be replaced with the appBaseUrl"));




  //load all the repositories here 
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  
  
  
  //load the controllers here
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
