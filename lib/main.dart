// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:turac/home/login.dart';
import 'package:turac/home/main_product.dart';
import 'package:get/get.dart';
import 'package:turac/home/signup_page.dart';
import 'package:turac/pages/product/popular_product_detail.dart';
import 'helper/dependencies.dart' as dep;

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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      // home: MainProductPage(),
      // home: PopularProductDetail(),
      // home:LoginPage(),
      home:SignupPage(),
    );
  }
}
