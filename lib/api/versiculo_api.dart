import 'package:dio/dio.dart';
import 'package:projetointheirskin/domain/Versiculo.dart';

class VersiculoApi{
  final dio = Dio();
  String baseUrl = 'https://bible-api.com/data/almeida/random';

  Future<Versiculo> findRandomVerse() async{
    final response = await dio.get(baseUrl);

    Versiculo versiculo = Versiculo.fromJson(response.data);
    print(versiculo.texto);
    return versiculo;
  }
}