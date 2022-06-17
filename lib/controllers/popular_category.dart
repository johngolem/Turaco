import 'package:get/get.dart';
import 'package:turac/models/products_model.dart';
import 'package:turac/repository/popular_category_repo.dart';



class PopularCategoryController extends GetxController {
  final PopularCategoryRepo popularCategoryRepo;

  PopularCategoryController({required this.popularCategoryRepo});
  List<dynamic> _popularCategoryList = [];
  List<dynamic> get popularCategoryList => _popularCategoryList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getPopularCategoryList() async {
    // ignore: unused_local_variable
    Response response = await popularCategoryRepo.getPopularCategoryList();

    // getx returns status code 200 if request is succesful
    if (response.statusCode == 200) {
      print("got products");
      _popularCategoryList = [];
      _popularCategoryList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      // print(_popularProductList);

      // here i have to create a model to convert the json data to obj and save the obj to
      //popular product list, after that, we can use it anywhere in the app.

      // _popularProductList.addAll(add the model here);

      // update is like the setState(), it tells the ui to update as per the received data.
      update();
    } else {}
  }
}
