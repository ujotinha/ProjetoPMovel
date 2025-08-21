import 'package:projetointheirskin/domain/Consulta.dart';
import 'package:projetointheirskin/db/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class ConsultaDao {
  Future<List<Consulta>> listarconsulta() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM CONSULTA;';
    var result = await db.rawQuery(sql);

    List<Consulta> listaConsulta = [];

    await Future.delayed(Duration(seconds: 3));

    // ForEach
    for (var json in result) {
      Consulta consultas = Consulta.fromJson(json);
      listaConsulta.add(consultas);
    }

    return listaConsulta;
  }
}