class InfoClima {
  late double temperatura;
  late String cidade;
  late String condicao;
  late int umidade;
  late double sensacao;
  late double indiceUv;

  InfoClima({
    required this.temperatura,
    required this.cidade,
    required this.condicao,
    required this.umidade,
    required this.sensacao,
    required this.indiceUv
  });

  InfoClima.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> currentJson = json['current'];
    Map<String, dynamic> locationJson = json['location'];
    Map<String, dynamic> conditionJson = currentJson['condition'];

    temperatura = currentJson['temp_c'];
    cidade = locationJson['name'];
    condicao = conditionJson['text'];
    umidade = currentJson['humidity'];
    sensacao = currentJson['feelslike_c'];
    indiceUv = currentJson['uv'];
  }
}