import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class PesquisaHelper{
  Future<Database> initDB() async{
    String path = await getDatabasesPath();
    String dbName = 'pesquisa.db';
    String dbPath = join(path, dbName);

    await deleteDatabase(dbPath);

    Database database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );
    return database;
  }

  Future<void> onCreate(Database db, int version) async {
    String sql_botaoartigo = '''CREATE TABLE BOTAOARTIGO (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT,
    
    );''';
    await db.execute(sql_botaoartigo);

    String sql_botaodicas = '''CREATE TABLE BOTAODICAS (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT,
    
    );''';
    await db.execute(sql_botaodicas);

    String sql_botaosobrecancer = '''CREATE TABLE BOTAOSOBRECANCER (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT,
    
    );''';
    await db.execute(sql_botaosobrecancer);

    String sql_botaovideo = '''CREATE TABLE BOTAOVIDEO (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    urlImage TEXT
    );''';
    await db.execute(sql_botaovideo);
  }
}