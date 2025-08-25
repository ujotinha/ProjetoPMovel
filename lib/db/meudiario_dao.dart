import 'package:projetointheirskin/domain/InformacoesPaciente.dart';
import 'package:projetointheirskin/db/db_helper.dart';
import 'package:projetointheirskin/domain/NotaMeuDiario.dart';
import 'package:sqflite/sqflite.dart';

class MeuDiarioDao {
  Future<List<NotaDiario>> listarNotas() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM MEU_DIARIO;';
    var result = await db.rawQuery(sql);

    List<NotaDiario> listaNotas = [];
    await Future.delayed(Duration(seconds: 3));

    // ForEach
    for (var json in result) {
      NotaDiario nota = NotaDiario.fromJson(json);
      listaNotas.add(nota);
    }

    return listaNotas;
  }
}
