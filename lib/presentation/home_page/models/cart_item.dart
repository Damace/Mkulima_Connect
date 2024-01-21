
import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';

class CartItem {
  final Products product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}
