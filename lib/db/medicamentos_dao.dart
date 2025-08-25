import 'package:projetointheirskin/domain/infoMedicamentos.dart';
import 'package:projetointheirskin/db/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class MedicamentosDao {
  Future<List<Medicamento>> listarMedicamentos() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM MEDICAMENTOS;';
    var result = await db.rawQuery(sql);
    print(result);

    List<Medicamento> listaMedicamentos = [];

    // ForEach
    for (var json in result) {
      Medicamento medicamentos = Medicamento.fromJson(json);
      listaMedicamentos.add(medicamentos);
    }

    return listaMedicamentos;
  }
}
