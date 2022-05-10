import 'package:flutter/material.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/appIcon.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text.dart';
import '../../widgets/small_text.dart';

class PopularProductDetail extends StatelessWidget {
  const PopularProductDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left:0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popProductImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/comp.jpg"
                  )
                )
              ),
            


          )),
          Positioned(
            top:Dimensions.height45,
            left:Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart_outlined)

            ],
            
          )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popProductImgSize-20,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight:Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),

                    ),
                  color: Color.fromARGB(255, 206, 225, 206),
                ),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Naipenda Tanzania -SLIPWAY"),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      Row(
                        children: [
                          Wrap(
                              children: List.generate(
                                  5,
                                  (index) => Icon(
                                        Icons.star,
                                        color: AppColors.mainColor,
                                        size: 15,
                                      ))),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          SmallText(text: "4.5"),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          SmallText(text: "1287"),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          SmallText(text: "comments"),
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconAndTextWidget(
                              icon: Icons.circle_sharp,
                              text: "Normal",
                              iconColor: AppColors.iconColor1),
                          IconAndTextWidget(
                              icon: Icons.location_on,
                              text: "1.7km",
                              iconColor: AppColors.mainColor),
                          IconAndTextWidget(
                              icon: Icons.access_time_filled_rounded,
                              text: "32min",
                              iconColor: AppColors.iconColor2),
                        ],
                      ),
                    ],
                  )
          ))
        ],
      ),
      
    );
  }
}