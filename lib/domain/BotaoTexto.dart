class Botaotexto{
  late String titulo;
  late String url;
  late String texto;

  Botaotexto({
    required this.titulo
  });

  Botaotexto.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    url = json['url'];
    texto = json['texto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
    return data;
  }

}