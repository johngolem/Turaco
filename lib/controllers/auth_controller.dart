import 'package:get/get.dart';
import 'package:turac/models/signupbody.dart';
import 'package:turac/repository/auth_repo.dart';
import 'package:get/get.dart';

class Authcontroller extends GetxController implements GetxService {
  final AuthRepo authRepo;

  Authcontroller({required this.authRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  registration(SignUpBody signUpBody) {
    _isLoading = true;
    

  }
}
