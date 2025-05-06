import '../model/User.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class UserDatabaseHelper{
  static final UserDatabaseHelper instance = UserDatabaseHelper._init();
  static Database? _database;
  UserDatabaseHelper._init();

  Future<Database> get database async{
    if(_database != null)
      return _database!;
    _database = await _initDB('app_database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async{
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db,int version) async{
    await db.execute(

  }

}