import 'package:get/get.dart';

import '../repository/popular_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    // ignore: unused_local_variable
    Response response = await popularProductRepo.getPopularProductList();

    // getx returns status code 200 if request is succesful
    if (response.statusCode == 200) {
      _popularProductList = [];
     // _popularProductList.addAll();
      // update is like the setState(), it tells the ui to update as per the received data.
      update(); 
    }else{
      
    }
  }
}
