// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:turac/home/product_page_body.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/widgets/big_text.dart';
import 'package:turac/widgets/small_text.dart';

class MainProductPage extends StatefulWidget {
  const MainProductPage({Key? key}) : super(key: key);

  @override
  State<MainProductPage> createState() => _MainProductPageState();
}

class _MainProductPageState extends State<MainProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                          SmallText(text: "Browse stores", color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded)
                       ],
                     )
                      ],
                  ),
                  Container
                  (
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                  )
                ], 
              ),
            ),
          ),
        // ignore: prefer_const_constructors
        ProductPageBody(),
        ],
      ),
    );
  }
}
