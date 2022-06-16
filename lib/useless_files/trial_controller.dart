// import 'dart:convert';
// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;
// import 'package:turac/utils/api.dart';

// login(email,password) async
//   {



//     Map data = {
//       'email': email,
//       'password': password
//     };
//     print(data.toString());
//     final  response= await http.post(
//         Uri.parse(LOGIN),
//         headers: {
//           "Accept": "application/json",
//           "Content-Type": "application/x-www-form-urlencoded"
//         },


//         body: data,
//         encoding: Encoding.getByName("utf-8")
//     )  ;
//     setState(() {
//       isLoading=false;
//     });
//     if (response.statusCode == 200) {
//       Map<String,dynamic>resposne=jsonDecode(response.body);
//       if(!resposne['error'])
//       {
//         Map<String,dynamic>user=resposne['data'];
//         print(" User name ${user['id']}");
//         savePref(1,user['name'],user['email'],user['id']);
//         Navigator.pushReplacementNamed(context, "/home");
//       }else{
//         print(" ${resposne['message']}");
//       }
//       scaffoldMessenger.showSnackBar(SnackBar(content:Text("${resposne['message']}")));

//     } else {
//       scaffoldMessenger.showSnackBar(SnackBar(content:Text("Please try again!")));
//     }


//   }
//   savePref(int value, String name, String email, int id) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();

//       preferences.setInt("value", value);
//       preferences.setString("name", name);
//       preferences.setString("email", email);
//       preferences.setString("id", id.toString());
//       preferences.commit();

//   }
// }