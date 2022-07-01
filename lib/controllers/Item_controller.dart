import 'package:get/get.dart';
import 'package:turac/models/response_model.dart';

import '../models/item_model.dart';
import '../repository/item_repo.dart';

class Itemcontroller extends GetxController implements GetxService {
  final ItemRepo itemRepo;

  Itemcontroller({required this.itemRepo});

  bool _isLoading = false;
  late ItemModel _itemModel;

  bool get isLoading => _isLoading;
  ItemModel get itemModel => _itemModel;

  Future<ResponseModel> getItemInfo() async {
    Response response = await itemRepo.getItemInfo();
    late ResponseModel responseModel;
    print(response.body.toString());

    if (response.statusCode == 200) {
      _itemModel = ItemModel.fromJson(response.body[0]);

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
