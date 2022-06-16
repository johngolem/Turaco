// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/utils/dimensions.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  bool isObscure;

  AppTextField(
      {Key? key,
      required this.textController,
      required this.hintText,
      required this.icon,
      this.isObscure=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            left: Dimensions.height20, right: Dimensions.height20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(1, 1),
                color: Colors.white.withOpacity(0.7),
              ),
            ]),
        child: TextField(
          obscureText: isObscure?true:false,
          controller: textController,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(
              icon,
              color: Color.fromARGB(255, 19, 68, 154),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1.0,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                borderSide: BorderSide(
                  // to be changed to white
                  color: AppColors.mainColor,
                  width: 1.0,
                )),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
            ),
          ),
        ));
  }
}
