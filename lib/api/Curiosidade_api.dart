import 'dart:math';
import 'package:projetointheirskin/domain/Curiosidade.dart';
import 'package:dio/dio.dart';

class CuriosidadeApi {
  final dio = Dio();
  String baseUrl = 'https://api.wikimedia.org/feed';

  Future<Curiosidade> findByDay() async {
    final hoje = DateTime.now();
    final mes = hoje.month.toString();
    final dia = hoje.day.toString();

    final response = await dio.get('$baseUrl/v1/wikipedia/pt/onthisday/selected/$mes/$dia');

    final List<dynamic> listaAniversarios = response.data['selected'];
    final List<Curiosidade> curiosidades = listaAniversarios.map((json) => Curiosidade.fromJson(json)).toList();    final random = Random();
    final curiosidadeSorteada = curiosidades[random.nextInt(curiosidades.length)];

    return curiosidadeSorteada;
  }
}
