import 'package:projetointheirskin/domain/Idade.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class IdadeApi {
  //instancia
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
          'X-API-Key': _apiKey,
        },
      ),
    );

    Map<String, dynamic> resposta = jsonDecode(response.data);
    Idade idade = Idade.fromJson(resposta);
    return idade;
  }
}
