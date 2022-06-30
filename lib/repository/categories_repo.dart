import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:turac/data/api/api_client.dart';
import 'package:turac/utils/app_constants.dart';

class CategoryRepo extends GetxService {
  //api repo should have an instance of api client
  final ApiClient apiClient;
  CategoryRepo({required this.apiClient});

  Future <Response>getCategory() async{
    return await apiClient.getData(AppConstants.categories_uri);
  }

//
  Future<Response> getCategoryInfo() async {
    return await apiClient.getData(AppConstants.categories_URI);
  }
}
