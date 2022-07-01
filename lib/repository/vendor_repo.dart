import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turac/data/api/api_client.dart';
import 'package:turac/utils/app_constants.dart';

class VendorRepo extends GetxService {
  //api repo should have an instance of api client
  final ApiClient apiClient;
  // final SharedPreferences sharedPreferences;

  VendorRepo({required this.apiClient});

  Future<Response> postItem() async {
    return await apiClient.postData(
      AppConstants.vendor_post_URI,
    );
  }

//
  Future<Response> getItemInfo() async {
    return await apiClient.getData(AppConstants.vendor_post_URI);
  }
}
