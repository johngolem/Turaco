import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ParagraphText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  ParagraphText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 12,
    this.height=1.6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 8,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        height: height,
      ),
    );
  }
}
