// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:turac/utils/dimensions.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    var emailController = TextEditingController();
    // var passwordController = TextEditingController();
    // var nameController = TextEditingController();
    // var phoneController = TextEditingController();


    
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
        SizedBox(height: Dimensions.screenHeight*0.05,),
        Container(
          height: Dimensions.screenHeight*0.25,
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 80,
              backgroundImage: AssetImage("image/url"
              )
              ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
          decoration: BoxDecoration(
            color: Colors.white,
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
      ]),
    );
  }
}
