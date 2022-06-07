// // ignore_for_file: constant_identifier_names, import_of_legacy_library_into_null_safe, prefer_typing_uninitialized_variables

// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:turac/models/users_model.dart';
// import 'package:turac/utils/app_constants.dart';


// enum Status {
//   NotLoggedIn,
//   NotRegistered,
//   LoggedIn,
//   Registered,
//   Authenticating,
//   Registering,
//   LoggedOut
// }

// class AuthProvider with ChangeNotifier {

//   Status _loggedInStatus = Status.NotLoggedIn;
//   Status _registeredInStatus = Status.NotRegistered;

//   Status get loggedInStatus => _loggedInStatus;
//   Status get registeredInStatus => _registeredInStatus;

//   get mobile => null;


//   Future<Map<String, dynamic>> login(String email, String password) async {
//     // ignore: prefer_typing_uninitialized_variables
//     var result;

//     final Map<String, dynamic> loginData = {
//       'user': {
//         'email': email,
//         'password': password,
//         // 'mobile': mobile
//       }
//     };

//     _loggedInStatus = Status.Authenticating;
//     notifyListeners();

//     Response response = await post(
//       AppConstants.login_URI,
//       body: json.encode(loginData),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 200) {
//       final Map<String, dynamic> responseData = json.decode(response.body);

//       var userData = responseData['data'];

//       User authUser = User.fromJson(userData);

//       UserPreferences().saveUser(authUser);

//       _loggedInStatus = Status.LoggedIn;
//       notifyListeners();

//       result = {'status': true, 'message': 'Successful', 'user': authUser};
//     } else {
//       _loggedInStatus = Status.NotLoggedIn;
//       notifyListeners();
//       result = {
//         'status': false,
//         'message': json.decode(response.body)['error']
//       };
//     }
//     return result;
//   }

//   Future<FutureOr> register(String email, String password, String passwordConfirmation) async {

//     final Map<String, dynamic> registrationData = {
//       'user': {
//         'email': email,
//         'password': password,
//         // 'password_confirmation': passwordConfirmation
//       }
//     };


//     _registeredInStatus = Status.Registering;
//     notifyListeners();

//     return await post(AppConstants.register_URI,
//         body: json.encode(registrationData),
//         headers: {'Content-Type': 'application/json'})
//         .then(onValue)
//         .catchError(onError);
//   }

//   static Future<FutureOr> onValue(Response response) async {
//     var result;
//     final Map<String, dynamic> responseData = json.decode(response.body);

//     if (response.statusCode == 200) {

//       var userData = responseData['data'];

//       User authUser = User.fromJson(userData);

//       UserPreferences().saveUser(authUser);
//       result = {
//         'status': true,
//         'message': 'Successfully registered',
//         'data': authUser
//       };
//     } else {

//       result = {
//         'status': false,
//         'message': 'Registration failed',
//         'data': responseData
//       };
//     }

//     return result;
//   }

//   static onError(error) {
//     print("the error is $error.detail");
//     return {'status': false, 'message': 'Unsuccessful Request', 'data': error};
//   }

// }