import 'package:flutter/material.dart';
import 'package:turac/utils/dimensions.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText({Key? key, this.color = const Color(0xFF5c524f), required this.text, this.size=20, this.overFlow=TextOverflow.ellipsis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: Dimensions.font20,
        fontWeight: FontWeight.w400
      ),
    );
  }
}
