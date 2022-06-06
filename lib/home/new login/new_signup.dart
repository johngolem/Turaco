// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:turac/utils/app_constants.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/app_text_field.dart';
import 'package:turac/widgets/big_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();


    
    return Scaffold(
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

      body: Column(
        children: [
          BigText(text: AppConstants.APP_NAME, color: Colors.green,size: Dimensions.font26,),
        SizedBox(height: Dimensions.screenHeight*0.05,),
        Container(
          height: Dimensions.screenHeight*0.25,
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 80,
              backgroundImage: AssetImage("assets/image/logo.png"
              ),
              ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            boxShadow:[
              BoxShadow(blurRadius: 10,spreadRadius: 7, offset:Offset(1,10), color: Colors.grey.withOpacity(0.2))
            ]
          ),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "email",
              prefixIcon: Icon(Icons.email, color: Colors.blue,),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1.0,
              )
              ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              borderSide: BorderSide(
                color: Colors.white, 
                width: 1.0,
              )
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
            ),
            ),

          ),
        ),
        SizedBox(height: Dimensions.height15,),
        AppTextField(textController: phoneController, hintText: "phone", icon: Icons.phone),
        SizedBox(height: Dimensions.height15,),
        AppTextField(textController: nameController, hintText: "Enter your name", icon: Icons.person),
        SizedBox(height: Dimensions.height15,),
        AppTextField(textController: passwordController, hintText: "input password", icon: Icons.password),
        SizedBox(height: Dimensions.height15,),
        AppTextField(textController: passwordController, hintText: "confirm password", icon: Icons.password),
        Container(
          width: Dimensions.screenWidth/2,
          height: Dimensions.screenHeight/13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            color: AppColors.mainColor
            ),
            child: Center(child: BigText(text: "Sign Up", size: Dimensions.font26, color: Colors.white,),
              
            ),
          ),
        
      ]),
    );
  }
}

