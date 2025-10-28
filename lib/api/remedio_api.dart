import 'package:dio/dio.dart';
import 'package:projetointheirskin/domain/infoMedicamentos.dart';

class MedicamentoApi{
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/Emmydbss/fake-api-emmy';


  Future<List<Medicamento>> findAll() async {
    List<Medicamento> listaMedicamentos = [];

    final response = await dio.get('$baseUrl/medicamentos');

    if (response.statusCode == 200) {
      var result = response.data;

      // ForEach
      for (var json in result) {
        Medicamento medicamentos = Medicamento.fromJson(json);
        listaMedicamentos.add(medicamentos);
      }
    }
    return listaMedicamentos;
  }
}
