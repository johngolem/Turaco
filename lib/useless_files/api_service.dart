// // ignore_for_file: unused_local_variable

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'package:turac/old_model_files/login_model.dart';

// class APIservice {
//   Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
//     String url = "https://turaco.nottech.app/api/auth/login";

//     final response = await http.post(url, body: requestModel.toJson());
//     if (response.statusCode == 200 || response.statusCode == 400) {
//       return LoginResponseModel.fromJson(json.decode(response.body));
//     } else {
//       throw Exception("failed to load data");
//     }
//   }
// }
