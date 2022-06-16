import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:turac/data/api/api_client.dart';
import 'package:turac/utils/app_constants.dart';

class PopularProductRepo extends GetxService {
  //api repo should have an instance of api client
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

//
  Future<Response> getPopularProductList() async {
    return await apiClient.getData("http://mvs.bslmeiyu.com/api/v1/products/popular");

    // AppConstants.POPULAR_PRODUCT_URI
  }
}
