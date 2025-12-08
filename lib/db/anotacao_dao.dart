import 'package:projetointheirskin/db/db_helper.dart';
import 'package:projetointheirskin/domain/Notas.dart';
import 'package:sqflite/sqflite.dart';

class AnotacaoDao {
  salvarNota(String nomeNota, String data, String dia, String conteudo) async {
    Database db = await DBHelper().initDB();
    String sql = "INSERT INTO MEU_DIARIO (nomeNota, dt_escrita, dia, conteudo) VALUES ('$nomeNota', '$data', '$dia', '$conteudo'";
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
