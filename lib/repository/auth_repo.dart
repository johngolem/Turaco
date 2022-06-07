

import 'package:get/get_connect.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turac/data/api/api_client.dart';
import 'package:turac/models/signupbody.dart';
import 'package:turac/utils/app_constants.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> registration(SignUpBody signUpBody) async {
    return await apiClient.postData(
        AppConstants.register_URI, signUpBody.toJson());
  }

  saveUserToken(String token) async{
    apiClient.token = token;
    apiClient.updateHeader(token);
    return await sharedPreferences.setString(AppConstants.TOKEN, token);

  }
}
