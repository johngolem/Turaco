// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/widgets/big_text.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({Key? key}) : super(key: key);

  @override
  State<ProductPageBody> createState() => _ProductPageBodyState();
}

class _ProductPageBodyState extends State<ProductPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: index.isEven ? Color(0xFF69C5df) : Color(0xff9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/nike.jpeg"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 140,
              margin: EdgeInsets.only(left: 25, right: 25, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                child: Column(children: [
                  BigText(text: "Kicks Tanzania"),
                  SizedBox(height:10,),
                  Row(
                    children: [
                    Wrap(
                      children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size:15,))
                      
                    )
                    
                  ],
                  )
                ]),
              ),
              ),
        ),
      ],
    );
  }
}