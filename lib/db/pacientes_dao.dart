import 'package:projetointheirskin/domain/InformacoesPaciente.dart';
import 'package:projetointheirskin/db/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class PacientesDao {
  Future<List<InfoPaciente>> listarPacientes() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM INFORMACOES_PACIENTE;';
    var result = await db.rawQuery(sql);

    List<InfoPaciente> listaPacientes = [];

    for (var json in result) {
      InfoPaciente paciente = InfoPaciente.fromJson(json);
      listaPacientes.add(paciente);
    }

    return listaPacientes;
  }
}
