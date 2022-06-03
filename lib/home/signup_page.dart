// // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:turac/home/login.dart';
// import 'package:turac/utils/app_constants.dart';
// import 'package:turac/utils/colors.dart';
// import 'package:turac/utils/dimensions.dart';
// import 'package:turac/widgets/appIcon.dart';
// import 'package:turac/widgets/app_text_field.dart';
// import 'package:turac/widgets/big_text.dart';
// import 'package:turac/widgets/small_text.dart';

// class SignupPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var emailController = TextEditingController();
//     var passwordController = TextEditingController();
//     var nameController = TextEditingController();
//     var phoneController = TextEditingController();
    
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       // resizeToAvoidBottomPadding: false,

//       //page background color
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         brightness: Brightness.light,
//         backgroundColor: Colors.white,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(
//               Icons.arrow_back_ios_new_sharp,
//               size: 20,
//               color: Colors.black,
//             )),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             width: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             SizedBox(
//                               width: Dimensions.width10,
//                             ),
//                             BigText(
//                                 text: AppConstants.APP_NAME,
//                                 color: AppColors.mainColor),
//                             // // Text ("Sign up", style: TextStyle(
//                             // //   fontSize: 30,
//                             // //   fontWeight: FontWeight.bold,
//                             // ),),
//                             SizedBox(
//                               height: Dimensions.height20,
//                             ),
//                             SmallText(
//                               text: "Create an Account,Its free",
//                               size: Dimensions.font16,
//                             ),
//                             SizedBox(
//                               height: Dimensions.height30,
//                             )
//                           ],
//                         ),
//                         SizedBox(
//                           height: Dimensions.height15,
//                         ),
//                         Text(
//                           "Sign up",
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 40),
                      


//                       //try inserting here
//                     child: Column(children: [
//                       TextField(
//                         controller: emailController,
//                       ),
//                     ]),


//                     //   child: Column(
                        
//                     //     children: [
//                     //       makeInput(label: "Email"),
//                     //       makeInput(label: "Phone Number"),
//                     //       makeInput(label: "Password", obsureText: true),
//                     //       makeInput(label: "Confirm Pasword", obsureText: true),
//                     //       SizedBox(
//                     //         height: Dimensions.height10,
//                     //       ),
//                     //       SmallText(
//                     //           text:
//                     //               "By registering to TURACO, you agree to the terms and policies"),
//                     //       SizedBox(
//                     //         height: Dimensions.height15,
//                     //       ),
//                     //     ],
//                     //   ),
//                     ),
//                     AppTextField(textController: emailController, hintText: "email", icon: Icons.email),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 40),
//                       child: Container(
//                         padding: EdgeInsets.only(top: 3, left: 3),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(40),
//                             border: Border(
//                                 bottom: BorderSide(color: Colors.black),
//                                 top: BorderSide(color: Colors.black),
//                                 right: BorderSide(color: Colors.black),
//                                 left: BorderSide(color: Colors.black))),
//                         child: MaterialButton(
//                           minWidth: double.infinity,
//                           height: 60,
//                           onPressed: () {},
//                           color: AppColors.mainColor,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(40)),
//                           child: Text(
//                             "Sign Up",
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Already have an account?  | LOGIN "),
//                         GestureDetector(
//                             onTap: () {
//                               Get.to(() => LoginPage());
//                             },
//                             child: AppIcon(
//                               icon: Icons.login_outlined,
//                               iconColor: AppColors.mainColor,
//                             ))
//                         // ("Login",style: TextStyle(
//                         //     fontWeight: FontWeight.w600,
//                         //     fontSize: 18
//                         // ),),
//                       ],
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget makeInput({label, obsureText = false}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         label,
//         style: TextStyle(
//             fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
//       ),
//       SizedBox(
//         height: 5,
//       ),
//       TextField(
//         obscureText: obsureText,
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(
//               color: Colors.grey,
//             ),
//           ),
//           border: OutlineInputBorder(
//               borderSide: BorderSide(
//             color: Colors.grey,
//           )),
//         ),
//       ),
//       SizedBox(
//         height: 30,
//       )
//     ],
//   );
// }
