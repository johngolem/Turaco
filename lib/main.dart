// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:turac/controllers/popular_product_controller.dart';
import 'package:turac/home/login.dart';
import 'package:turac/useless_files/old_model_files/new_login.dart';
import 'package:turac/pages/category_main.dart';
import 'package:turac/pages/main_product.dart';
import 'package:get/get.dart';
import 'package:turac/useless_files/signup_page.dart';
import 'package:turac/models/category_model.dart';
import 'package:turac/pages/product/category_detail.dart';
import 'package:turac/pages/product/popular_product_detail.dart';
import 'package:turac/pages/user_profile.dart';
import 'controllers/popular_category.dart';
import 'helper/dependencies.dart' as dep;
import 'home/new login/new_signup.dart';
import 'home/new login/old_signup.dart';

// this is the init method for the api's
Future<void> main() async {
  //makes ure dependancies are loaded correctly and waits until they are loaded
  WidgetsFlutterBinding.ensureInitialized();
  //load dependancies here
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
      Get.find<PopularCategoryController>().getPopularCategoryList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home:MainCategoryPage(),
      // home: PopularProductDetail(),
      // home:LoginPage(),
      // home:SignUpPage(),
      // home:CategoryDetail(),
      // home:AccountProfile(),
      // home: SignIn(),
    );
  }
}
