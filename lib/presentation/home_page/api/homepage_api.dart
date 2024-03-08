import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/presentation/home_page/models/category_model.dart';
import 'package:mkulima_connect/presentation/home_page/models/dataList_model.dart';
import 'package:mkulima_connect/presentation/home_page/models/news_events_model.dart';
import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';
import 'package:http/http.dart' as http;

class GetNews {
  static var client = http.Client();

  static Future<List<NewsandEvents>?> fetchNewsandEvents() async {
    try {
      var response = await client.get(Uri.parse(
          'https://mkulimakonekti.alitihaadislamicfoundation.co.tz/newsEvents'));

      if (response.statusCode == 200) {
        var jsonString = response.body;
        print(jsonString);
        return newsandEventsFromJson(jsonString);
      } else {
        return null;
      }
    } catch (e) {

      print(e);
    }
  }
}


class GetProduct {
  static var client = http.Client();

  static Future<List<Products>?> fetchProducts() async {
    try {
      var response = await client.get(Uri.parse(
          'http://mkonekt.scienceontheweb.net/MkulimaKonekti/Controller/product/routes/routes.php/allProducts'));
   
      if (response.statusCode == 200) {
        var jsonString = response.body;
        print(jsonString);
        return productsFromJson(jsonString);
      } else {
        //show error message
        return null;
      }
    } catch (e) {
      // make it explicit that this function can throw exceptions
      print(e);
    }
  }
}


class GetCategory {
  static var client = http.Client();

  static Future<List<Category>?> fetchCategory() async {
    try {
      var response = await client.get(Uri.parse(
          'http://mkonekt.scienceontheweb.net/mkulimaApp/category/getCategory.php'));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return categoryFromJson(jsonString);
      } else {
        //show error message
        return null;
      }
    } catch (e) {
      // make it explicit that this function can throw exceptions
      print(e);
    }
  }
}

class GetDataList {
  static Future<List<Items>?> fetchItems() async {
    try {
      String jsonData = await rootBundle.loadString('assets/items.json');
      // return json.decode(jsonData);
      var jsonString = json.decode(jsonData);
      return itemsFromJson(jsonString);
    } catch (e) {
      print(e);
    }
  }
}
