import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelperconsulta {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbNameConsulta = 'consulta.db';
    String dbPath = join(path, dbNameConsulta);


    Database database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );
    print(dbPath);
    return database;
  }

  Future<void> onCreate(Database db, int version) async {

    String sql_consulta = '''CREATE TABLE CONSULTA (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    especialidade TEXT,
    nomemedico TEXT,
    horario TEXT,
    data TEXT
  );''';
    await db.execute(sql_consulta);
    print('Tabela CONSULTA criada');

    String sql_pneumologista =
        "INSERT INTO CONSULTA (especialidade, nomemedico, horario, data) VALUES ('Pneumologista', 'Doutor Aragão','10:30', 'qua, 16 de abr.');";
    await db.execute(sql_pneumologista);
    print('Consulta pneumologista inserida');

    String sql_oncologista =
        "INSERT INTO CONSULTA (especialidade, nomemedico, horario, data) VALUES ('Oncologista','Doutor Alencar', '14:00', 'sex, 30 de set.');";
    await db.execute(sql_oncologista);
    print('Consulta oncologista inserida');

    String sql_radiooncologista =
        "INSERT INTO CONSULTA (especialidade, nomemedico, horario, data) VALUES ('Radio-oncologista', 'Doutor Ferreira', '15:00', 'seg, 17 de out.');";
    await db.execute(sql_radiooncologista);
    print('Consulta radio-oncologista inserida');

  }
}