import 'package:mkulima_connect/presentation/home_page/models/employee_model.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<Products>?> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'http://mwakalikamo.pythonanywhere.com/employees'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productsFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}