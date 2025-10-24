import 'package:projetointheirskin/domain/Curiosidade.dart';
import 'package:dio/dio.dart';

class CuriosidadeApi {
  final dio = Dio();
  String baseUrl = 'https://api.wikimedia.org/feed/';

  Future<Curiosidade> findByDay(String mes, String dia) async {
    final response = await dio.get('$baseUrl/v1/wikipedia/pt/onthisday/births/$mes/$dia');

    Curiosidade curiosidade = Curiosidade.fromJson(response.data);
    return curiosidade;
  }
}