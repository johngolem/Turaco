import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:turac/data/api/api_client.dart';
import 'package:turac/models/vendor_model.dart';
import 'package:turac/utils/app_constants.dart';

class VendorRepo extends GetxService {
  //api repo should have an instance of api client
  final ApiClient apiClient;
  VendorRepo({required this.apiClient});

  Future<Response> vendorRegistration(VendorModelBody vendorModelBody) async {
    return await apiClient.postData( AppConstants.vendor_post_URI,);
  }

//getitem infor needs replacement 


  Future<Response> getItemInfo() async {
    return await apiClient.postData(AppConstants.vendor_post_URI);
  }
}
