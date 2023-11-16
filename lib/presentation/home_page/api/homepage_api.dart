import 'dart:convert';

import 'package:mkulima_connect/presentation/home_page/models/employee_model.dart';
import 'package:http/http.dart' as http;

class HomepageApi {
  static var client = http.Client();

  static Future<List<Products>> fetchdata() async {
    String url = "http://mwakalikamo.pythonanywhere.com/employees";

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var jsonstring = response.body;
      return productsFromJson(jsonstring);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
