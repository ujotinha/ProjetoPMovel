import 'package:dio/dio.dart';
import 'package:projetointheirskin/domain/Consulta.dart';

class ConsultaApi{
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/mavi-hub/fake-api-mavi';

  Future<List<Consulta>> findAll() async{
    List<Consulta> listaConsultas = [];
    final response = await dio.get('$baseUrl/consultas');
    if (response.statusCode == 200) {
      var result = response.data;

      for (var json in result) {
        Consulta consultas = Consulta.fromJson(json);
        listaConsultas.add(consultas);
      }
    }
    return listaConsultas;
  }
}