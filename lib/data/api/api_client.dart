// ignore_for_file: unused_field

import 'dart:async';

import 'package:get/get_connect.dart';
// import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;

  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);

    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(
    String uri,
  ) async {
    //try to get data using a get method
    try {
      // reponse is object where we save the data that will be received = (await get) this gets the data from the attached uri
      Response response = await get(uri);
      return response;
      //if it fails to get a response,
      // the catch is the else to the first try,
    } catch (e) {
      return Response(
        statusCode: 1, statusText: e.toString()
      );
    }
  }
}
