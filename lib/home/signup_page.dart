// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turac/home/login.dart';
import 'package:turac/utils/app_constants.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/appIcon.dart';
import 'package:turac/widgets/app_text_field.dart';
import 'package:turac/widgets/big_text.dart';
import 'package:turac/widgets/small_text.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();

    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(
          height: Dimensions.screenHeight * 0.05,
        ),
        Container(),
        AppTextField(
            textController: emailController,
            hintText: "email",
            icon: Icons.email),
        AppTextField(
            textController: phoneController,
            hintText: "phone number",
            icon: Icons.phone)
      ]),
    );
  }
}
