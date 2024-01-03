import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    }

    _db = await initDatabase();
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'cart.db');
    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        // 'CREATE TABLE cart (id INTEGER PRIMARY KEY , productId VARCHAR UNIQUE,productName TEXT,initialPrice INTEGER, productPrice INTEGER , quantity INTEGER, unitTag TEXT , image TEXT )');
        'CREATE TABLE cart (productid INTEGER PRIMARY KEY ,image_one TEXT ,name TEXT,price INTEGER,quantity INTEGER)');
  }

  Future<Products> insert(Products cart) async {
    print(cart.toMap());
    var dbClient = await db;
    await dbClient!.insert('cart', cart.toMap());
    return cart;
  }

  Future<List<Products>> getCartList() async {
    var dbClient = await db;
    final List<Map<String, Object?>> queryResult =
        await dbClient!.query('cart');
    return queryResult.map((e) => Products.fromJson(e)).toList();
  }

  Future<int> delete(int productid) async {
    var dbClient = await db;
    return await dbClient!.delete('cart', where: 'productid  = ?', whereArgs: [productid ]);
  }

  Future<int> updateQuantity(Products cart) async {
    var dbClient = await db;
    return await dbClient!.update('cart', cart.toMap(),
        where: 'productid  = ?', whereArgs: [cart.productid]);
  }
}
