import 'package:projetointheirskin/db/db_helper.dart';
import 'package:projetointheirskin/domain/Notas.dart';
import 'package:sqflite/sqflite.dart';

class MeuDiarioDao {
  Future<List<Notas>> listarNotas() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM MEU_DIARIO;';
    var result = await db.rawQuery(sql);

    List<Notas> listaNotas = [];
    await Future.delayed(Duration(seconds: 3));

    // ForEach
    for (var json in result) {
      Notas nota = Notas.fromJson(json);
      listaNotas.add(nota);
    }

    return listaNotas;
  }
}
