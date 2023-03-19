import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shigoto/data/models/login_response.dart';

class ApiService{

  static const BASE_URL = "http://10.0.2.2:8000/api/";


  static Future<LoginResponse> login() async {

    final body = {
      'email': "jj@gmail.com",
      'password': "amar1234",
      'password_confirmation': "amar1234"
    };

    debugPrint("$body");

    final response = await http.post(Uri.parse("${BASE_URL}login"), body: body);

    debugPrint("${jsonDecode(response.body)}");

    debugPrint(response.statusCode.toString());
    if (response.statusCode == 200) {
      return LoginResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to login.');
    }
  }


}