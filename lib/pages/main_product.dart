// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turac/pages/product_page_body.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/widgets/big_text.dart';
import 'package:turac/widgets/small_text.dart';

import 'product/popular_product_detail.dart';

class MainProductPage extends StatefulWidget {
  const MainProductPage({Key? key}) : super(key: key);

  @override
  State<MainProductPage> createState() => _MainProductPageState();
}

class _MainProductPageState extends State<MainProductPage> {
  @override
  Widget build(BuildContext context) {
    // print("current height is"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top:45, bottom: 15),
              padding: EdgeInsets.only(left:20, right:20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Turaco ", color: AppColors.mainColor), 
                     Row(
                       children: [
                          SmallText(text: "Browse stores", color: Colors.red,),
                          Icon(Icons.arrow_drop_down_rounded)
                       ],
                     )
                      ],
                  ),
                  Container
                  (
                    width: 45,
                    height: 45,
                    child: GestureDetector(
                     onTap: () {
                        // Get.to(() => MainProductPage());
                        Get.to(() => PopularProductDetail());
                     },
                    child: Icon(Icons.search, color: Colors.grey)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  )
                ], 
              ),
            ),
          ),
        // ignore: prefer_const_constructors
        //showing the body
          Expanded(child: SingleChildScrollView(
            child: ProductPageBody(), 
        )),
        ],
      ),
    );
  }
}
