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
    await db.execute(sql);
    print('Tabela CONSULTAS criada');

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

    String sql_joserodrigues =
        "INSERT INTO INFORMACOES_PACIENTE (nomePaciente, dt_nasc, cpf, diagnostico) VALUES ('José Rodrigues Silva', '17/02/1983', '123.456.147-01', 'Paciente apresenta tosse persistente há mais de 3 meses, hemoptise, perda de peso significativa e dor torácica. Exame de imagem (tomografia) evidenciou massa pulmonar no lobo superior direito, confirmada por biópsia como carcinoma de células não pequenas.');";
    await db.execute(sql_joserodrigues);
    print('NOME inserido');

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
