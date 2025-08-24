class Botaotexto{
  late String titulo;

  Botaotexto({
    required this.titulo
  });

  Botaotexto.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titulo'] = this.titulo;
    return data;
  }

}