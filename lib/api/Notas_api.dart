import 'package:projetointheirskin/domain/NotaMeuDiario.dart';
import 'package:dio/dio.dart';

class NotasApi {
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/ujotinha/fakeAPI';

  Future<List<NotaDiario>> findAll() async {
    List<NotaDiario> listaNotas = [];

    final response = await dio.get('$baseUrl/properties');
    print(response);

    if (response.statusCode == 200) {
      var result = response.data;

      for (var json in result) {
        NotaDiario notas = NotaDiario.fromJson(json);
        listaNotas.add(notas);
      }
    }
    return listaNotas;
  }
}
