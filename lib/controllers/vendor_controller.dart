import 'package:get/get.dart';
import 'package:turac/models/response_model.dart';

import '../models/vendor_model.dart';
import '../repository/vendor_repo.dart';


class Itemcontroller extends GetxController implements GetxService {
  final VendorRepo vendorRepo;

  Itemcontroller({required this.vendorRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  

  Future<ResponseModel> vendorRegistration(VendorRegistrationBody vendorRegistrationBody) async {
  _isLoading = true;
   Response response = await vendorRepo.vendorRegistration(vendorRegistrationBody);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      print("succesfully posted vendor details");


      // vendorRepo.saveVendordetails(response.body);
      
      responseModel = ResponseModel(true, response.body["service_name"]);
      
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }