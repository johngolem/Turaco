import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:turac/data/api/api_client.dart';
import 'package:turac/utils/app_constants.dart';

import '../models/product_item_model.dart';

class ProductRepo extends GetxService {
  //api repo should have an instance of api client
  final ApiClient apiClient;
  ProductRepo({required this.apiClient,});

  Future<Response> productRegistration(
      ProductModelBody productModelBody) async {
    return await apiClient.postOtherData(
        AppConstants.product_post_URI, productModelBody.toJson());
  }
}

//getitem infor needs replacement 


