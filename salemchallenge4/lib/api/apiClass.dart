import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:salemchallenge4/Consts/apiConstants.dart';

class ApiClass {
  static ttt({required String endPoint}) async {
    var url = Uri.https(ApiConstantss.baseUrl, ApiConstantss.usersEndpoint);
    var response = await http.get(url);
    //print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else
      return [];
  }
}
