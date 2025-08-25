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

    String sql_pacientes = '''CREATE TABLE INFORMACOES_PACIENTE (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nomePaciente TEXT,
        dt_nasc TEXT,
        cpf TEXT,
        diagnostico TEXT
    );''';

    await db.execute(sql_medicamentos);
    print('Tabela MEDICAMENTOS criada');

    await db.execute(sql_pacientes);
    print('Tabela PACIENTES criada');

    String sql_diario = '''CREATE TABLE MEU_DIARIO (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nomeNota TEXT,
        dt_escrita TEXT,
        dia TEXT,
        conteudo TEXT
    );''';

    await db.execute(sql_diario);
    print('Tabela DIARIO criada');

    String sql = '''CREATE TABLE CONSULTAS (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    horario TEXT,
    data TEXT
  );''';

    String sql_nota1 =
        "INSERT INTO MEU_DIARIO (nomeNota, dt_escrita, dia, conteudo) VALUES ('José Rodrigues Silva', '17/02/1983', 'Seg.', 'Paciente apresenta tosse persistente há mais de 3 meses, hemoptise, perda de peso significativa e dor torácica. Exame de imagem (tomografia) evidenciou massa pulmonar no lobo superior direito, confirmada por biópsia como carcinoma de células não pequenas.');";
    await db.execute(sql_nota1);
    print('NOTA inserido');
  }
}