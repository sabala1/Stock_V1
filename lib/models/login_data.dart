import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DbLogin {
  static Database? _db;

//Database Name
  static const String DB_Name = 'test.db';

//Table Name
  static const String Table_Employee = 'employee';
  static const int Version = 1;

//Column Name
  static const String _EmployeeID = 'employee_id';
  static const String _Password = 'password';

//Create DB functions
  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
//Create Table
    await db.execute('CREATE TABLE $Table_Employee ('
        '$_EmployeeID Text, '
        '$_Password Text, '
        'PRIMARY KEY ($_EmployeeID)'
        ')');
  }
}
