import 'package:projetointheirskin/domain/Notas.dart';
import 'package:dio/dio.dart';

class NotasApi {
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/ujotinha/fakeAPI';

  Future<List<Notas>> findAll() async {
    // Database db = await DBHelper().initDB();
    // String sql = 'SELECT * FROM PROPRIEDADE;';
    // var result = await db.rawQuery(sql);

    List<Notas> listaNotas = [];

    final response = await dio.get('$baseUrl/properties');
    print(response);

    // await Future.delayed(Duration(seconds: 5));

    if (response.statusCode == 200) {
      var result = response.data;

      // ForEach
      for (var json in result) {
        Notas notas = Notas.fromJson(json);
        listaNotas.add(notas);
      }
    }
    return listaNotas;
  }
}