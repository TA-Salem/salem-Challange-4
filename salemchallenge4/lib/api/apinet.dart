import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:salemchallenge4/api/api.dart';

class ApiClass {
  static ttt({required String endPoint}) async {
    var url = Uri.https(ApiConstantss.baseUrl, ApiConstantss.usersEndpoint);
    var response = await http.get(url);
    //print(response.body);
    return response.body;
  }
}
