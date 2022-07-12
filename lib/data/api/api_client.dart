// ignore_for_file: unused_field, prefer_const_constructors, avoid_print

import 'dart:async';
import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turac/models/product_item_model.dart';
import 'package:turac/utils/app_constants.dart';

import '../../models/response_model.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late SharedPreferences sharedPreferences;
  late ResponseModel responseModel;
  late ProductModelBody productModelBody;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl, required this.sharedPreferences}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = sharedPreferences.getString(AppConstants.TOKEN)!;
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
  void updateHeader(String token) {
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri, {Map<String, String>? headers}) async {
    //try to get data using a get method
    try {
      // reponse is object where we save the data that will be received = (await get) this gets the data from the attached uri
      Response response = await get(uri, headers: headers ?? _mainHeaders);
      return response;
      //if it fails to get a response,
      // the catch is the else to the first try,
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

// method for posting registration data cause it does  not require a bearer token
  Future<Response> postRegData(String uri, dynamic body) async {
    print(body.toString());
    try {
      Response response = await post(uri, body, headers: _mainHeaders);
      print(response.toString());
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

// method for posting data that requires the bearer token
  Future<Response> postData(String uri, {Map<String, String>? headers}) async {
    // {Map<String, dynamic>? json}

    try {
      Response response = await post(uri, headers ?? _mainHeaders);
      print(response.toString());
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusCode: 1, statusText: e.toString());
    }
  }

// method to post data that requires bearer token, a body and uri
  Future<Response> postOtherData(String uri,  productModelBody,
      {Map<String, String>? headers}) async {
    try {
      Response response = await postOtherData(uri, productModelBody,
          headers: headers ?? _mainHeaders);
      print(response.toString());
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}


// Map<String, dynamic> toJson()