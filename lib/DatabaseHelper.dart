import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDatabase();
    return _db!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'cart.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE cart_items (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            quantity INTEGER
          )
        ''');
      },
    );
  }

  Future<void> insertCartItem(String name, int quantity) async {
    final dbClient = await db;
    await dbClient.insert(
      'cart_items',
      {'name': name, 'quantity': quantity},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Map<String, dynamic>>> getCartItems() async {
    final dbClient = await db;
    return await dbClient.query('cart_items');
  }

  Future<void> deleteCartItem(int id) async {
    final dbClient = await db;
    await dbClient.delete(
      'cart_items',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

// Add other methods as needed

// Rest of the DatabaseHelper class...
}
