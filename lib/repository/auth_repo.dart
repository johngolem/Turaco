import 'package:get/get_connect.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turac/data/api/api_client.dart';
import 'package:turac/models/signupbody_model.dart';
import 'package:turac/utils/app_constants.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> registration(SignUpBody signUpBody) async {
    return await apiClient.postRegData(
        AppConstants.register_URI, signUpBody.toJson());
  }

  bool userLoggedIn() {
    return sharedPreferences.containsKey(AppConstants.TOKEN);
  }

  Future<String> getUserToken() async {
    return await sharedPreferences.getString(AppConstants.TOKEN) ?? "None";
  }

  Future<Response> login(String email, String password) async {
    return await apiClient.postRegData(
        AppConstants.login_URI, {"email": email, "password": password});
  }

// saves the token
  Future<bool> saveUserToken(String token) async {
    apiClient.token = token;
    apiClient.updateHeader(token);
    return await sharedPreferences.setString(AppConstants.TOKEN, token);
  }

  Future<void> saveUserEmailAndPassword(String email, String password) async {
    try {
      await sharedPreferences.setString(AppConstants.EMAIL, email);
      await sharedPreferences.setString(AppConstants.PASSWORD, password);
    } catch (e) {
      throw e;
    }
  }

  // method to clear everything from sharedpref
  bool clearSharedData() {
    sharedPreferences.remove(AppConstants.TOKEN);
    sharedPreferences.remove(AppConstants.PASSWORD);
    sharedPreferences.remove(AppConstants.EMAIL);
    apiClient.token = '';
    apiClient.updateHeader('');
    return true;
  }
}
