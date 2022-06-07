
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/app_text_field.dart';
import 'package:turac/widgets/big_text.dart';
import 'package:turac/widgets/small_text.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  
  Widget build(BuildContext context) {

     var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top:45, bottom: 15),
              padding: EdgeInsets.only(left:20, right:20),
            child:Column(
              children:[
                BigText(text: "Turaco",color: AppColors.mainColor, size: Dimensions.font45,),
                SizedBox(height: Dimensions.height25,),
                Container(
                  height: Dimensions.pageViewLogo,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/logo.png"))),
          ),
          SmallText(text: "Start Selling And Buying Online with Turaco", size: Dimensions.font16, color: Colors.black,)


              ]
            )
            
             
              
            ),

            
            Column(
              children: [
                Column(
                  children: [
                    Text ("Login", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 20,),
                    Text("Welcome back ! Login with your credentials",style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),),
                    SizedBox(height: 30,)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40
                  ),
                  child: Column(
                    children: [
                      AppTextField(textController: emailController, hintText: "Email", icon: Icons.email),
                      SizedBox(height: Dimensions.height15,),
                      AppTextField(textController: passwordController, hintText: "password", icon: Icons.password),
                      SizedBox(height: Dimensions.height15,),
                      // makeInput(label: "Email "),
                      // makeInput(label: "Password",obsureText: true),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 3,left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black)
                        )
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height:60,
                      onPressed: (){},
                      color:AppColors.mainColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: Text("Login"),
                      ),
                      ),
                    ),
                  
                
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account?"),
                    // ElevatedButton(onPressed: (){},
                    //  child: Text("Sign Up",style: TextStyle(
                    //   fontWeight: FontWeight.w600,
                    //   fontSize: 18)
                    // ),) 
                    
                    //trial 
                    //  TextSpan(
                    //   recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage()),
                    // text: "Create",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   color: Colors.grey,
                    //   fontSize: Dimensions.font16,
                    // ),
                    // ),
                  ],
                )
              ],

            ),
          ],
        ),
      ),
    );
  }
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.black87
      ),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,)
          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}
