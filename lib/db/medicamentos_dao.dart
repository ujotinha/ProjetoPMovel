import 'package:projetointheirskin/domain/infoMedicamentos.dart';
import 'package:projetointheirskin/db/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class MedicamentosDao {
  Future<List<Medicamento>> listarMedicamentos() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM MEDICAMENTOS;';
    var result = await db.rawQuery(sql);

    List<Medicamento> listaMedicamentos = [];

    await Future.delayed(Duration(seconds: 3));

    // ForEach
    for (var json in result) {
      Medicamento medicamentos = Medicamento.fromJson(json);
      listaMedicamentos.add(medicamentos);
    }

    return listaMedicamentos;
  }
}
