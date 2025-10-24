import 'package:projetointheirskin/domain/Idade.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class IdadeApi {
  final dio = Dio();
  String baseUrl = 'https://api.apiverve.com/v1';
  final String _apiKey = 'e8d7200c-24ec-4ee3-920c-cb96140b35d2';

  Future<Idade> findByDate(String dob) async {
    final response = await dio.get(
      '$baseUrl/agecalculator',
      queryParameters: {
        'dob': dob,
      },
      options: Options(
        headers: {
          'x-api-key': _apiKey,
        },
      ),
    );

    var jsonData = jsonDecode(response.data.toString());
    Map<String, dynamic> dadosDaIdade = jsonData['data'];
    return Idade.fromJson(dadosDaIdade);
  }
}