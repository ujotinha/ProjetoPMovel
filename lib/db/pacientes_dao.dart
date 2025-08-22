import 'package:projetointheirskin/domain/InformacoesPaciente.dart';
import 'package:projetointheirskin/db/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class PacientesDao {
  Future<List<InfoPaciente>> listarPacientes() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT nomePaciente, dt_nasc, cpf FROM INFORMACOES_PACIENTE;';
    var result = await db.rawQuery(sql);

    List<InfoPaciente> listaPacientes = [];
    await Future.delayed(Duration(seconds: 3));

    // ForEach
    for (var json in result) {
      InfoPaciente paciente = InfoPaciente.fromJson(json);
      listaPacientes.add(paciente);
    }

    return listaPacientes;
  }
}
