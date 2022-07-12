import 'package:get/get.dart';
import 'package:turac/models/product_item_model.dart';
import 'package:turac/models/response_model.dart';
import '../repository/product_item_repo.dart';

class ProductItemcontroller extends GetxController implements GetxService {
  final ProductRepo productRepo;

  ProductItemcontroller({required this.productRepo});

  bool _isLoading = false;
  late ProductModelBody _productModel;

  bool get isLoading => _isLoading;
  ProductModelBody get productModel => _productModel;

  Future<ResponseModel> productRegistration(
      ProductModelBody productModel) async {
    _isLoading = true;
    Response response = await productRepo.productRegistration(productModel);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      print("succesuful ");
      // responseModel = ResponseModel(true, response.body["access_token"]);

    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }
}
