import 'package:get/get.dart';
import 'package:turac/models/response_model.dart';
import '../models/vendor_model.dart';
import '../repository/vendor_repo.dart';

class Vendorcontroller extends GetxController implements GetxService {
  final VendorRepo vendorRepo;

  Vendorcontroller({required this.vendorRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ResponseModel> vendorRegistration(VendorModelBody vendorModelBody) async {
    _isLoading = true;
    Response response = await vendorRepo.vendorRegistration(vendorModelBody);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      print("succesfully posted vendor details");

      responseModel = ResponseModel(true, response.body["service_name"]);
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }
}
