import 'package:flutter/material.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({Key? key}) : super(key: key);

  @override
  State<ProductPageBody> createState() => _ProductPageBodyState();
}

class _ProductPageBodyState extends State<ProductPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:320,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(left:5,right: 5),
      decoration: BoxDecoration(
      borderRadius:BorderRadius.circular(35),
      color: index.isEven? Color(0xFF69C5df):Color(0xff9294cc),
      image: DecorationImage(
        image:AssetImage(
          "assets/image/comp.jpg")
        )
       ),
    );
  }
}
