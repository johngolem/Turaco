import 'package:get/get.dart';
import 'package:turac/models/product_item_model.dart';
import 'package:turac/models/response_model.dart';
import '../repository/product_item_repo.dart';


class ProductItemcontroller extends GetxController implements GetxService {
  final ProductRepo productRepo;

  ProductItemcontroller({required this.productRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ResponseModel> productRegistration(ProductModelBody productModelBody) async {
    _isLoading = true;
    Response response = await productRepo.productRegistration(productModelBody);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      print("succesfully posted product Item details");

      responseModel = ResponseModel(true, response.body["item_category"]);
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }
}
