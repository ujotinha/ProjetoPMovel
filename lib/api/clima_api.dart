import 'package:dio/dio.dart';
import 'package:projetointheirskin/domain/infoClima.dart';

class ClimaApi{
  final dio = Dio();
  String baseUrl = 'https://api.weatherapi.com/v1/current.json?key=efca289ee5534fd4bf501632250308&q=aracaju&aqi=no&lang=pt';

  Future<InfoClima> getInfoClima() async{
    final response = await dio.get(baseUrl);

    InfoClima infoclima = InfoClima.fromJson(response.data);

    return infoclima;
  }
}
