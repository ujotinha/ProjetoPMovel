import 'package:projetointheirskin/domain/InformacoesPaciente-APIFake.dart';
import 'package:dio/dio.dart';

class InfoPacienteApi {
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/isabelaferreira-pweb/APIFake';

  Future<List<InfoPacienteApiFake>> findAll() async {

    List<InfoPacienteApiFake> listaPacientes = [];

    final response = await dio.get('$baseUrl/INFORMACOES_PACIENTE');
    print(response);

    if (response.statusCode == 200) {
      var result = response.data;

      for (var json in result) {
        InfoPacienteApiFake infoPacienteApiFake =
            InfoPacienteApiFake.fromJson(json);
        listaPacientes.add(infoPacienteApiFake);
      }
    }
    return listaPacientes;
  }
}
