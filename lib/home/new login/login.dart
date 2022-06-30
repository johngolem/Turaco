// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turac/base/custom_loader.dart';
import 'package:turac/base/show_custom_snackbar.dart';
import 'package:turac/base/success_customsnackbar.dart';
import 'package:turac/controllers/auth_controller.dart';
import 'package:turac/pages/main_product.dart';
import 'package:turac/routes/route_helper.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/app_text_field.dart';
import 'package:turac/widgets/big_text.dart';
import 'package:turac/widgets/small_text.dart';

import 'new_signup.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    void _login(Authcontroller authcontroller) {
      var authController = Get.find<Authcontroller>();

      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if (email.isEmpty) {
        showCustomSnackBar("Type in your email address",
            title: "Invalid input");
      } else if (!GetUtils.isEmail(email)) {
        showCustomSnackBar("Type a valid email address",
            title: "Invalid email");
      } else if (password.isEmpty) {
        showCustomSnackBar("Type in your password", title: "Invalid input");
      } else if (password.length < 4) {
        showCustomSnackBar("Password has to be 4* long",
            title: "password too short");
      } else {
        successCustomSnackBar("Login succesful", title: "Success");

        authController.login(email, password).then((status) {
          if (status.isSuccess) {
            Get.toNamed(RouteHelper.getpopularCategory());
             
          } else {
            showCustomSnackBar(status.message);
          }
        });
      }
    }

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   brightness: Brightness.light,
      //   backgroundColor: Colors.white,
      //   leading:
      //   IconButton( onPressed: (){
      //     Navigator.pop(context);
      //   },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      // ),
      body: GetBuilder<Authcontroller>(
        builder: (authcontroller) {
          return !authcontroller.isLoading
              ? SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 45, bottom: 15),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Column(children: [
                              BigText(
                                text: "Turaco",
                                color: AppColors.mainColor,
                                size: Dimensions.font45,
                              ),
                              SizedBox(
                                height: Dimensions.height25,
                              ),
                              Container(
                                height: Dimensions.pageViewLogo,
                                margin: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.radius20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/image/logo.png"))),
                              ),
                              SmallText(
                                text:
                                    "Start Selling And Buying Online with Turaco",
                                size: Dimensions.font16,
                                color: Colors.black,
                              )
                            ])),
                        Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 3, left: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(70),
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black),
                                          top: BorderSide(color: Colors.black),
                                          right:
                                              BorderSide(color: Colors.black),
                                          left:
                                              BorderSide(color: Colors.black))),
                                  child: MaterialButton(
                                      minWidth: double.infinity,
                                      height: 60,
                                      onPressed: () {
                                        if (Get.find<Authcontroller>()
                                            .userLoggedIn()) {
                                          Get.find<Authcontroller>()
                                              .clearSharedData();
                                          Get.offNamed(
                                              RouteHelper.getLoginPage());
                                          // add code to clear cart (min 10.53)
                                        } else {
                                          // use custom snackbar

                                          print("you logged out");
                                        }
                                        ;
                                      },
                                      color: AppColors.mainColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      child: Text("Logout")),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Welcome back ! Login with your credentials",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                children: [
                                  AppTextField(
                                      textController: emailController,
                                      hintText: "Email",
                                      icon: Icons.email),
                                  SizedBox(
                                    height: Dimensions.height15,
                                  ),
                                  AppTextField(
                                    textController: passwordController,
                                    hintText: "password",
                                    icon: Icons.password,
                                    isObscure: true,
                                  ),
                                  SizedBox(
                                    height: Dimensions.height15,
                                  ),
                                  // makeInput(label: "Email "),
                                  // makeInput(label: "Password",obsureText: true),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Container(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border(
                                        bottom: BorderSide(color: Colors.black),
                                        top: BorderSide(color: Colors.black),
                                        right: BorderSide(color: Colors.black),
                                        left: BorderSide(color: Colors.black))),
                                child: MaterialButton(
                                    minWidth: double.infinity,
                                    height: 60,
                                    onPressed: () {
                                       
                                      _login(authcontroller);
                                    },
                                    color: AppColors.mainColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Text("Login")),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => SignUpPage());
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text("Dont have an account?"),
                                  SizedBox(
                                    height: Dimensions.height15,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Get.to(() => MainProductPage());
                                      },
                                      child: Icon(
                                        Icons.home_outlined,
                                        color: Colors.green,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              : CustomLoader();
        },
      ),
    );
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.grey,
          )),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
