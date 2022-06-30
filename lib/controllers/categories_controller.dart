import 'package:get/get.dart';
import 'package:turac/models/response_model.dart';

import '../models/categories_model.dart';
import '../repository/categories_repo.dart';

class Usercontroller extends GetxController implements GetxService {
  final CategoryRepo categoryRepo;

  Usercontroller({required this.categoryRepo});

  bool _isLoading = false;
  // ignore: unused_field
  late CategoryModel _categoryModel;

  bool get isLoading => _isLoading;
  CategoryModel get categoryModel => _categoryModel;

  Future<ResponseModel> getCategoryInfo() async {
    _isLoading = true;
    Response response = await categoryRepo.getCategoryInfo();
    late ResponseModel responseModel;
    _categoryModel = CategoryModel.fromJson(response.body);

    
    if (response.statusCode == 200) {
      responseModel = ResponseModel(true, "successfully");
    } else {
      responseModel = ResponseModel(false, response.statusText!);
    }
    _isLoading = false;
    update();
    return responseModel;
  }
}
