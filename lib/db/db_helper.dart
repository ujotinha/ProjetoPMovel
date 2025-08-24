import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'medicamentos.db';
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

    String sql_medicamentos = '''CREATE TABLE MEDICAMENTOS (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    horario TEXT,
    data TEXT
  );''';
    await db.execute(sql_medicamentos);
    print('Tabela MEDICAMENTOS criada');


    // Inserções
    String sql_erlotinib =
        "INSERT INTO MEDICAMENTOS (nome, horario, data) VALUES ('Erlotinib', '08:30', 'Todos os dias');";
    await db.execute(sql_erlotinib);
    print('Erlotinib inserido');

    String sql_dipirona =
        "INSERT INTO MEDICAMENTOS (nome, horario, data) VALUES ('Dipirona', '09:00', '19 de maio');";
    await db.execute(sql_dipirona);
    print('Dipirona 1 inserido');

    String sql_ibupronfeno =
        "INSERT INTO MEDICAMENTOS (nome, horario, data) VALUES ('Dipirona', '09:00', '19 de maio');";
    await db.execute(sql_ibupronfeno);
    print('Dipirona 1 inserido');
  }
}