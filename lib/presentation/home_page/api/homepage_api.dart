import 'package:mkulima_connect/presentation/home_page/models/category_model.dart';
import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';
import 'package:http/http.dart' as http;

class GetProduct {
  static var client = http.Client();

  static Future<List<Products>?> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'http://192.168.0.100/mkulimaApp/product/getProduct.php'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productsFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}

class GetCategory {
  static var client = http.Client();

  static Future<List<Category>?> fetchCategory() async {
    var response = await client.get(Uri.parse(
        'http://192.168.0.100/mkulimaApp/category/getCategory.php'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return categoryFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}