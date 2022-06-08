
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:turac/data/api/api_client.dart';
import 'package:turac/utils/app_constants.dart';

class CategoriesRepo extends GetxService {
  //api repo should have an instance of api client
  final ApiClient apiClient;
  CategoriesRepo({required this.apiClient});


//
  Future<Response> getCategoryList() async {
    return await apiClient.getData(AppConstants.categories_URI);
  }
}
