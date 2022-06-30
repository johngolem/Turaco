import 'package:get/get.dart';
import 'package:turac/models/response_model.dart';
import 'package:turac/models/signupbody_model.dart';
import 'package:turac/repository/auth_repo.dart';

import '../utils/app_constants.dart';

class Authcontroller extends GetxController implements GetxService {
  final AuthRepo authRepo;

  Authcontroller({required this.authRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ResponseModel> registration(SignUpBody signUpBody) async {
    _isLoading = true;
    Response response = await authRepo.registration(signUpBody);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      authRepo.saveUserToken(response.body["access_token"]);
      responseModel = ResponseModel(true, response.body["access_token"]);
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  // login method
  Future<ResponseModel> login(String email, String password) async {
    // print("getting token");
    // print(authRepo.getUserToken().toString());
    _isLoading = true;
    update();
    Response response = await authRepo.login(email, password);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      // print("backend bearer token");


      
      authRepo.saveUserToken(response.body["access_token"]);

      // print(response.body["access_token"].toString());
      responseModel = ResponseModel(true, response.body["access_token"]);
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }

  // ignore: dead_code
  void saveUserEmailAndPassword(String email, String password) {
    authRepo.saveUserEmailAndPassword(email, password);
  }

  bool userLoggedIn() {
    return authRepo.userLoggedIn();
  }
   bool clearSharedData() {
   
    return authRepo.clearSharedData();
  }
}
