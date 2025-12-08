import 'package:projetointheirskin/domain/Notas.dart';
import 'package:dio/dio.dart';

class NotasApi {
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/ujotinha/fakeAPI';

  Future<List<Notas>> findAll() async {
    List<Notas> listaNotas = [];

    final response = await dio.get('$baseUrl/properties');
    print(response);

    if (response.statusCode == 200) {
      var result = response.data;

      for (var json in result) {
        Notas notas = Notas.fromJson(json);
        listaNotas.add(notas);
      }
    }
    return listaNotas;
  }
}
