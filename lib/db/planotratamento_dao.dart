import 'package:projetointheirskin/db/db_helper.dart';
import 'package:projetointheirskin/domain/PlanoTratamento.dart';
import 'package:sqflite/sqflite.dart';

class PlanoTratamentoDao {
  Future<List<PlanoTratamento>> listarDiagnostico() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT diagnostico FROM INFORMACOES_PACIENTE;';
    var result = await db.rawQuery(sql);

    List<PlanoTratamento> planoTratamento = [];
    await Future.delayed(Duration(seconds: 3));

    // ForEach
    for (var json in result) {
      PlanoTratamento diagnostico = PlanoTratamento.fromJson(json);
      planoTratamento.add(diagnostico);
    }

    return planoTratamento;
  }
}
