import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'diario.db';
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

    String sql_diario = '''CREATE TABLE MEU_DIARIO (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nomeNota TEXT,
        dt_escrita TEXT,
        dia TEXT,
        conteudo TEXT
    );''';

    await db.execute(sql_diario);
    print('Tabela DIARIO criada');

    String sql_nota1 =
        "INSERT INTO MEU_DIARIO (nomeNota, dt_escrita, dia, conteudo) VALUES ('Minha consulta', '18/08/2025', 'Seg.', 'A minha consulta foi ótima, o Dr. Tiago é um amor de pessoa e me deixou confortável o tempo inteiro. Com certeza eu irei voltar para realizar outra consulta.');";
    await db.execute(sql_nota1);
    print('NOTA inserido');
    String sql_nota2 =
        "INSERT INTO MEU_DIARIO (nomeNota, dt_escrita, dia, conteudo) VALUES ('Minha segunda consulta', '20/08/2025', 'Qua.', 'A minha segunda consulta foi ótima, o Dr. Tiago é um amor de pessoa e me deixou confortável o tempo inteiro. Com certeza eu irei voltar para realizar outra consulta.');";
    await db.execute(sql_nota2);
    print('NOTA inserido');
  }
}
