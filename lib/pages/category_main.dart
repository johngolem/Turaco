// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turac/base/custom_loader.dart';
import 'package:turac/controllers/auth_controller.dart';
import 'package:turac/pages/product_page_body.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/widgets/big_text.dart';
import 'package:turac/widgets/small_text.dart';

import '../controllers/categories_controller.dart';

class MainCategoryPage extends StatefulWidget {
  const MainCategoryPage({Key? key}) : super(key: key);

  @override
  State<MainCategoryPage> createState() => _MainCategoryPageState();
}

class _MainCategoryPageState extends State<MainCategoryPage> {
  @override
  Widget build(BuildContext context) {
    bool _userLoggedIn = Get.find<Authcontroller>().userLoggedIn();
    if (_userLoggedIn) {
      Get.find<Categorycontroller>().getCategoryInfo();
    }
    // print("current height is"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: GetBuilder<Categorycontroller>(builder: (categorycontroller) {
        return _userLoggedIn?
        (categorycontroller.isLoading?Container(child:Center(child: Text("add the page here that needs to be loaded i.e categories pagen"))):
        CustomLoader()):
        Container(child:Center(child: Text("you must first login")));
      }),
    );
  }
}
