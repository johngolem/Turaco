import 'package:flutter/material.dart';
import 'package:turac/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidget({Key? key,
  required this.icon,
  required this.text,
  // required this.color,
  required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,),
        SmallText(text: text,),
        // ignore: prefer_const_constructors
        SizedBox(width: 20,),
      
      ],
    );
  }
}
