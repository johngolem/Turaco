import 'package:flutter/material.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/appIcon.dart';
import 'package:turac/widgets/app_column.dart';

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
            top: Dimensions.popProductImgSize-25,
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight:Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),

                    ),
                  color: Color.fromARGB(255, 198, 198, 198),
                ),
                 // ignore: prefer_const_constructors
                 child:AppColumn(text:"Milimani City", rating: "4.3",),
                 ))
        ],
      ),
      
    );
  }
}