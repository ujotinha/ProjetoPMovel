import 'package:projetointheirskin/domain/Address.dart';
import 'package:dio/dio.dart';

class AddressApi {
  final dio = Dio();
  String baseUrl = 'https://api.apiverve.com/v1/agecalculator';

  Future<Address> findByCep(String cep) async {
    final response = await dio.get('$baseUrl/cep/v2/$cep');

    Address address = Address.fromJson(response.data);
    return address;
  }
}