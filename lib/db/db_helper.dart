import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'medicamentos.db';
    String dbPath = join(path, dbName);

    Database database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );

    return database;
  }

  Future<void> onCreate(Database db, int version) async {

    String sql = '''CREATE TABLE MEDICAMENTOS (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT,
      horario TEXT,
      data TEXT
    );''';
    await db.execute(sql);

    sql = '''CREATE TABLE CONSULTAS (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT,
      horario TEXT,
      data TEXT
    );''';
    await db.execute(sql);

    await db.execute(
        "INSERT INTO MEDICAMENTOS (nome, horario, data) VALUES ('Erlotinib', '08:00', 'Todos os dias');");
    await db.execute(
        "INSERT INTO MEDICAMENTOS (nome, horario, data) VALUES ('Machumba', '09:00', '19 de maio');");
    await db.execute(
        "INSERT INTO MEDICAMENTOS (nome, horario, data) VALUES ('Machumba', '12:30', '20 de maio');");
    await db.execute(
        "INSERT INTO MEDICAMENTOS (nome, horario, data) VALUES ('Machumba', '18:00', '21 de maio');");
  }
}
