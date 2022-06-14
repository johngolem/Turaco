// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turac/controllers/auth_controller.dart';
import 'package:turac/models/login_model.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/big_text.dart';
import 'package:turac/widgets/small_text.dart';

class LoginPageNew extends StatefulWidget {
  @override
  State<LoginPageNew> createState() => _LoginPageNewState();
}

class _LoginPageNewState extends State<LoginPageNew> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState>globalFormKey = new GlobalKey<FormState>();
  bool hidepassword =true;
  late LoginRequestModel requestModel;
  


  @override
  void initstate(){
    super.initState();
    requestModel = new LoginRequestModel(email, password)
  }

   @override
  Widget build(BuildContext context) {
   

    return Scaffold(
        key: scaffoldkey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
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
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/image/logo.png"))),
                          ),
                          SmallText(
                            text: "Start Selling And Buying Online with Turaco",
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
                          child: Form(
                            key: globalFormKey,
                            child: Column(
                              children: [
                                new TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  // onSaved: (input) => requestModel.email = input,
                                  validator: (input)=>input.contains("@")?,"Email should be valid" : null,
                                  decoration: new InputDecoration(
                                    hintText: "email address",
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:BorderSide(
                                        color: Theme.of(context)
                                        .backgroundColor
                                        .withOpacity(0.2)) 
                                        ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:BorderSide(
                                        color: Theme.of(context)
                                        .accentColor
                                      )
                                      ),
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.blue,
                                    )
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.height15,
                                ),
                                new TextFormField(
                                  keyboardType: TextInputType.text,
                                  onSaved: (input) => requestModel.password = input,
                                  // validator: (input) => input.length < 4
                                  //     ? "password should have 4 characters to be valid"
                                  //     :null,
                                  obscureText: hidepassword,
                                  decoration: new InputDecoration(
                                    hintText: "password",
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:BorderSide(
                                        color: Theme.of(context)
                                        .backgroundColor
                                        .withOpacity(0.2)) 
                                        ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:BorderSide(
                                        color: Theme.of(context)
                                        .accentColor
                                      )
                                      ),
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.blue,
                                    )
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.height15,
                                ),
                              ],
                            ),
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
                              onPressed: () {},
                              color: AppColors.mainColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              child: GestureDetector(
                                  onTap: () {
                                    _login(authcontroller);
                                  },
                                  child: Text("Login")),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dont have an account?"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
      );
        
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
