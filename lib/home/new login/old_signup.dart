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
      resizeToAvoidBottomInset: false,
      // resizeToAvoidBottomPadding: false,

      //page background color
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: 
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Dimensions.width10,
                            ),
                            BigText(
                                text: AppConstants.APP_NAME,
                                color: AppColors.mainColor),
                            // // Text ("Sign up", style: TextStyle(
                            // //   fontSize: 30,
                            // //   fontWeight: FontWeight.bold,
                            // ),),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            SmallText(
                              text: "Create an Account,Its free",
                              size: Dimensions.font16,
                            ),
                            SizedBox(
                              height: Dimensions.height30,
                            )
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.height15,
                        ),
                        Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      


                      //try inserting here
                    
                    // child: Container(
                      
                    //   margin: EdgeInsets.only(left: Dimensions.height20, right: Dimensions.height20),
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(Dimensions.radius20),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         blurRadius: 10,
                    //         spreadRadius: 7,
                    //         offset: Offset(1,10),
                    //         color: Colors.grey.withOpacity(0.2),
                    //       )
                    //     ]
                    //   ),
                    //   child: Column(children: [
                    //     TextField(
                    //       controller: emailController,
                    //       decoration: InputDecoration(
                    //         //hinttext
                    //         hintText: "email",                   
                    //         //prefixicon//
                    //          prefixIcon: Icon(Icons.email,color: Colors.blue,),
                    //         //focus border
                    //         focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(Dimensions.radius30),
                    //         borderSide: BorderSide(width: 1.0, color: Colors.white)),
                    //         // enabled border
                    //         enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(Dimensions.radius30),
                    //         borderSide: BorderSide(width: 1.0, color: Colors.white)),
                    //         //border
                    //         border: OutlineInputBorder(borderRadius:BorderRadius.circular(Dimensions.radius30),
                    //         ),
                    //       ),
                    //     ),
                    //   ]),
                    // ),


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
                          onPressed: () {},
                          color: AppColors.mainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?  | LOGIN "),
                        GestureDetector(
                            onTap: () {
                              Get.to(() => LoginPage());
                            },
                            child: AppIcon(
                              icon: Icons.login_outlined,
                              iconColor: AppColors.mainColor,
                            ))
                        // ("Login",style: TextStyle(
                        //     fontWeight: FontWeight.w600,
                        //     fontSize: 18
                        // ),),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
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
