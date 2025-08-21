import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'consulta.db';
    String dbPath = join(path, dbName);

    await deleteDatabase(dbPath);

    Database database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );
    print(dbPath);
    return database;
  }

  Future<void> onCreate(Database db, int version) async {
    print('onCreate foi chamado!');

    String sql_consulta = '''CREATE TABLE CONSULTA (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    nome TEXT,
    horario TEXT,
    data TEXT
  );''';
    await db.execute(sql_consulta);
    print('Tabela CONSULTA criada');

    String sql = '''CREATE TABLE CONSULTA (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    nome TEXT,
    horario TEXT,
    data TEXT
  );''';
    await db.execute(sql);
    print('Tabela CONSULTA criada');


    String sql_pneumologista =
        "INSERT INTO CONSULTA (nome, nome, horario, data) VALUES ('Pneumologista', 'Doutor Aragão','10:30', 'qua, 16 de abr.');";
    await db.execute(sql_pneumologista);
    print('');

    String sql_oncologista =
        "INSERT INTO CONSULTA (nome, nome, horario, data) VALUES ('Oncologista','Doutor Alencar', '14:00', 'sex, 30 de set.');";
    await db.execute(sql_oncologista);
    print('');

    String sql_radiooncologista =
        "INSERT INTO CONSULTA (nome, nome, horario, data) VALUES ('Radio-oncologista', 'Doutor Ferreira', '15:00', 'seg, 17 de out.');";
    await db.execute(sql_radiooncologista);
    print('Dipirona 1 inserido');

  }
}