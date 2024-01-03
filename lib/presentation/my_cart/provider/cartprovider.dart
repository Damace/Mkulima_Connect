import 'package:flutter/material.dart';
import 'package:mkulima_connect/presentation/my_cart/database/db_helper.dart';
import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class CartProvider with ChangeNotifier {
  DBHelper db = DBHelper();
  int _counter = 0;
  int get counter => _counter;

  double _totalPrice = 0.0;
  double get totalPrice => _totalPrice;

  late Future<List<Products>> _cart;
  Future<List<Products>> get cart => _cart;

  Future<List<Products>> getData() async {
    _cart = db.getCartList();
    return _cart;
  }

  void _setPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('cart_item', _counter);
    prefs.setDouble('total_price', _totalPrice);
    notifyListeners();
  }

  void _getPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('cart_item') ?? 0;
    _totalPrice = prefs.getDouble('total_price') ?? 0.0;
    notifyListeners();
  }

  void addTotalPrice(double price) {
    _totalPrice = _totalPrice + price;
    _setPrefItems();
    notifyListeners();
  }

  void removeTotalPrice(double price) {
    _totalPrice = _totalPrice - price;
    _setPrefItems();
    notifyListeners();
  }

  double getTotalPrice() {
    _getPrefItems();
    return _totalPrice;
  }

  void addCounter() {
    _counter++;
    _setPrefItems();
    notifyListeners();
  }

  void removerCounter() {
    _counter--;
    _setPrefItems();
    notifyListeners();
  }

  int getCounter() {
    _getPrefItems();
    return _counter;
  }
}
