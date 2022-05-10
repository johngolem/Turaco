import 'package:flutter/material.dart';
import 'package:turac/home/main_product.dart';
import 'package:get/get.dart';
import 'package:turac/pages/product/popular_product_detail.dart';

void main() {
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
      home:PopularProductDetail()
    );
  }
}
