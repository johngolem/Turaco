// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turac/base/show_custom_snackbar.dart';
import 'package:turac/base/success_customsnackbar.dart';
import 'package:turac/controllers/auth_controller.dart';
import 'package:turac/models/signupbody.dart';
import 'package:turac/utils/app_constants.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/app_text_field.dart';
import 'package:turac/widgets/big_text.dart';

import 'login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();
    
   

    void _registration(Authcontroller authcontroller) {
      var authController = Get.find<Authcontroller>();

      String phone = phoneController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      

      if (phone.isEmpty) {
        showCustomSnackBar("Type in your phone number",
            title: "Phone number cannot be empty");
      } else if (email.isEmpty) {
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
        successCustomSnackBar("All went well", title: "Success");
        SignUpBody signUpBody = SignUpBody(phone: phone, email: email, password: password);
        // name: name,

        authController.registration(signUpBody).then((status) {
          if (status.isSuccess) {
            print("succesful registration");
          } else {
            showCustomSnackBar(status.message);
          }
        });

        print(signUpBody.toString());
      }
    }
    

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.screenHeight * 0.05),
          child: AppBar(
            backgroundColor: AppColors.mainColor,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 20,
                  color: Colors.black,
                )),
          ),
        ),
        body: GetBuilder<Authcontroller>(
          builder: (_authController) {
            return !_authController.isLoading? SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: Dimensions.height10,
                ),
                BigText(
                  text: AppConstants.APP_NAME,
                  color: AppColors.mainColor,
                  size: Dimensions.font26,
                ),
                SizedBox(height: Dimensions.height10),
                Container(
                  height: Dimensions.screenHeight * 0.20,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 100,
                      backgroundImage: AssetImage("assets/image/logo.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.height20, right: Dimensions.height20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 10),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          )),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height15,
                ),
                AppTextField(
                  textController: phoneController,
                  hintText: "phone",
                  icon: Icons.phone
                ),
                SizedBox(
                  height: Dimensions.height15,
                ),
                AppTextField(
                    textController: passwordController,
                    hintText: "Enter password",
                    icon: Icons.password_sharp, isObscure: true,),               
                SizedBox(
                  height: Dimensions.height20,
                ),

                // sign up button
                GestureDetector(
                  onTap: () {
                    _registration(_authController);
                  },
                  child: Container(
                    width: Dimensions.screenWidth / 2,
                    height: Dimensions.screenHeight / 13,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius30),
                        color: AppColors.mainColor),
                    child: Center(
                      child: BigText(
                        text: "Sign Up",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height15,
                ),
                // login link
                Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                        Get.to(()=>LoginPage());
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: Dimensions.height20),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20)),
                        child: BigText(
                          text: "Already have an account? | Login",
                          color: AppColors.mainBlackColor,
                          size: Dimensions.font20,
                        ),
                      ),
                    )
                  ],
                )
              ]),
            )
         : CircularProgressIndicator();
          },
        )
        );
  }
}
