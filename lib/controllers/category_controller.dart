// ignore_for_file: unused_local_variable

import 'package:get/get.dart';
import 'package:turac/repository/categories.dart';



class CategoryController extends GetxController {
  final CategoryRepo categoryRepo;

  CategoryController({required this.categoryRepo});
  List<dynamic> _categoryList = [];
  List<dynamic> get categoryList => _categoryList;

  Future<void> getCategoryList() async {
  Response response = await categoryRepo.getCategoryList();
  
    

    // getx returns status code 200 if request is succesful
    if (response.statusCode == 200) {
      _categoryList = [];
      // _categoryList.addAll(add the model here);
      // here i have to create a model to convert the json data to obj and save the obj to 
      //popular product list, after that, we can use it anywhere in the app. 
      // update is like the setState(), it tells the ui to update as per the received data.
      update(); 
    }else{
      
    }
  }
}
