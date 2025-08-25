import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'medicamentos.db');

    await deleteDatabase(dbPath);

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

    sql = "INSERT INTO MEDICAMENTOS (nome, horario, data) VALUES ('Erlotinib', '08:30', 'Todos os dias');";
    await db.execute(sql);

    sql = "INSERT INTO MEDICAMENTOS (nome, horario, data) VALUES ('Dipirona', '09:00', '19 de maio');";
    await db.execute(sql);

    sql = "INSERT INTO MEDICAMENTOS (nome, horario, data) VALUES ('Ibuprofeno', '10:00', 'Amanhã');";
    await db.execute(sql);

  }
}