import 'package:projetointheirskin/domain/InformacoesPaciente.dart';
import 'package:dio/dio.dart';

class InfoPacienteApi {
  final dio = Dio();
  String baseUrl =
      'https://my-json-server.typicode.com/isabelaferreira-pweb/APIFake';

  Future<List<InfoPaciente>> findAll() async {
    List<InfoPaciente> listaPacientes = [];

    final response = await dio.get('$baseUrl/INFORMACOES_PACIENTE');

    if (response.statusCode == 200) {
      var result = response.data;

      for (var json in result) {
        InfoPaciente infoPaciente = InfoPaciente.fromJson(json);
        listaPacientes.add(infoPaciente);
      }
    }
    return listaPacientes;
  }
}
