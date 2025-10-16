import 'package:projetointheirskin/domain/BotaoImagem.dart';
import 'package:projetointheirskin/domain/BotaoTexto.dart';
import 'package:dio/dio.dart';

class BotoesApi{
  final dio = Dio();
  String baseUrl = 'https://my-json-server.typicode.com/Isaque123Barbosa/fake-api-isaque';

  Future<List<Botaotexto>> findAllArtigos() async {
    List<Botaotexto> listaBotoes = [];
    final response = await dio.get('$baseUrl/botaoArtigo');
    print(response);

    // await Future.delayed(Duration(seconds: 5));

    if (response.statusCode == 200) {
      var result = response.data;

      // ForEach
      for(var json in result){
        Botaotexto botaotexto = Botaotexto.fromJson(json);
        listaBotoes.add(botaotexto);
      }
    }
    return listaBotoes;
  }
  Future<List<Botaotexto>> findAllDicas() async {
    List<Botaotexto> listaBotoes = [];
    final response = await dio.get('$baseUrl/botaoDicas');
    print(response);

    // await Future.delayed(Duration(seconds: 5));

    if (response.statusCode == 200) {
      var result = response.data;

      // ForEach
      for(var json in result){
        Botaotexto botaotexto = Botaotexto.fromJson(json);
        listaBotoes.add(botaotexto);
      }
    }
    return listaBotoes;
  }
  Future<List<Botaotexto>> findAllSobreCancer() async {
    List<Botaotexto> listaBotoes = [];
    final response = await dio.get('$baseUrl/botaoSobreCancer');
    print(response);

    // await Future.delayed(Duration(seconds: 5));

    if (response.statusCode == 200) {
      var result = response.data;

      // ForEach
      for(var json in result){
        Botaotexto botaotexto = Botaotexto.fromJson(json);
        listaBotoes.add(botaotexto);
      }
    }
    return listaBotoes;
  }
  Future<List<Botaoimagem>> findAll() async {
    List<Botaoimagem> listaBotoes = [];
    final response = await dio.get('$baseUrl/botaoimagem');
    print(response);

    // await Future.delayed(Duration(seconds: 5));

    if (response.statusCode == 200) {
      var result = response.data;

      // ForEach
      for(var json in result){
        Botaoimagem botaoimagem = Botaoimagem.fromJson(json);
        listaBotoes.add(botaoimagem);
      }
    }
    return listaBotoes;
  }
}