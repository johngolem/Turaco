import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:turac/data/api/api_client.dart';
import 'package:turac/utils/app_constants.dart';

class PopularCategoryRepo extends GetxService {
  //api repo should have an instance of api client
  final ApiClient apiClient;
  PopularCategoryRepo({required this.apiClient});

//
  Future<Response> getPopularCategoryList() async {
    return await apiClient.getData(AppConstants.POPULAR_CATEGORY_URI);

    // AppConstants.POPULAR_PRODUCT_URI
  }
}
