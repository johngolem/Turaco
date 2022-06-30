// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turac/controllers/auth_controller.dart';
import 'package:turac/home/new%20login/new_signup.dart';
import 'package:turac/pages/main_product.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/appIcon.dart';
import 'package:turac/widgets/app_column.dart';
import 'package:turac/widgets/product_text_detail.dart';
import '../../utils/colors.dart';
import '../../widgets/big_text.dart';

class PopularProductDetail extends StatelessWidget {
  const PopularProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // first is the background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popProductImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/comp.jpg"))),
              )),
          // icon widget
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(() => MainProductPage());
                      },
                      child: AppIcon(icon: Icons.arrow_back_ios)),
                  GestureDetector(
                      onTap: () {
                        if (Get.find<Authcontroller>().userLoggedIn()) {
                          print("tapped when user is logged in");
                        } else {
                          print("user not logged in");
                        }
                        // Get.to(() => SignUpPage());
                      },
                      child: AppIcon(icon: Icons.shopping_cart_outlined)),
                ],
              )),
          //intro to product detail;
          // expandable text
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popProductImgSize - 25,
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(
                        text: "Milimani City",
                        rating: "4.3",
                        shopId: "2",
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(text: "Introduction"),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                              child: ExpandableTextWidget(
                                  text:
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet., comes from a line in section 1.10.32."))),
                    ],
                  ))),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height20,
            bottom: Dimensions.height25,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2))),
        child: Row(
            // this pushes the two containers to the edges of the page
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //container with the add to cart button
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height15,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: AppColors.signColor,
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    BigText(text: "0"),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    Icon(
                      Icons.add,
                      color: AppColors.signColor,
                    ),
                  ],
                ),
              ),
              // container with add to cart text
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height15,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                child: BigText(
                  text: "\$10 | Add to cart",
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor),
              )
            ]),
      ),
    );
  }
}
