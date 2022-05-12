import 'package:flutter/material.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/appIcon.dart';
import 'package:turac/widgets/app_column.dart';
import 'package:turac/widgets/paragraph_text.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text.dart';
import '../../widgets/small_text.dart';

class PopularProductDetail extends StatelessWidget {
  const PopularProductDetail({ Key? key }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                 child:Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   AppColumn(text:"Milimani City", rating: "4.3",),
                   SizedBox(height: Dimensions.height20,),
                   BigText(text: "Introduction"),
                   SizedBox(height: Dimensions.height20,),
                   ParagraphText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at tellus at odio sodales iaculis et ac tortor. Donec nec lorem eros. Nullam vehicula ac felis pharetra porttitor. Vivamus eu mauris blandit, varius tortor at, venenatis libero. Nullam volutpat eleifend dapibus. Ut fermentum purus vitae ultricies faucibus. Nam id elit et augue congue gravida ac a enim. Proin imperdiet, nulla dignissim accumsan fringilla, nibh purus mattis massa, eu ullamcorper ligula leo ut justo. Donec consectetur felis in sem pellentesque, quis vulputate massa mollis. Mauris in nisl eu magna luctus gravida quis non erat. Quisque eget luctus urna, vitae blandit eros. Ut gravida quam nulla, non eleifend dui ullamcorper quis. Phasellus tempus volutpat venenatis. Aliquam varius elit vitae augue condimentum rhoncus. Sed posuere elit leo, ut vestibulum tortor ullamcorper sed. Quisque porta ex eros, at auctor ligula volutpat eu.")



                 ],)
                 )
                 ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height25,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          )
        ),
      child: Row(children: [
        Container(
          padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height15, left: Dimensions.width20, right: Dimensions.width20),
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(Dimensions.radius20),
            color: Colors.yellow,
          ),
          child: Row(
            children: [
              Icon(Icons.remove,color: AppColors.signColor,),
              SizedBox(width: Dimensions.width10,),
              BigText(text: "0"),
              SizedBox(width: Dimensions.width10,),
              Icon(Icons.add, color: AppColors.signColor,),
            ],
          ),
        ),
      ]),
      ),
      
    );
  }
}