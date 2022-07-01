import 'package:get/get.dart';
import 'package:turac/models/response_model.dart';

import '../models/categories_model.dart';
import '../repository/categories_repo.dart';

class Categorycontroller extends GetxController implements GetxService {
  final CategoryRepo categoryRepo;

  Categorycontroller({required this.categoryRepo});

  bool _isLoading = false;
  // ignore: unused_field
  late CategoryModel _categoryModel;

  bool get isLoading => _isLoading;
  CategoryModel get categoryModel => _categoryModel;

  Future<ResponseModel> getCategoryInfo() async {
    Response response = await categoryRepo.getCategoryInfo();
    late ResponseModel responseModel;
    print(response.body.toString());

    if (response.statusCode == 200) {
      _categoryModel = CategoryModel.fromJson(response.body);

      _isLoading = true;
      responseModel = ResponseModel(true, "successfully");
    } else {
      print("did not get data");
      responseModel = ResponseModel(false, response.statusText!);
    }

    update();
    return responseModel;
  }
}
