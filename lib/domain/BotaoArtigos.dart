class BotaoArtigo{
  late String titulo;

  BotaoArtigo({
    required this.titulo,
  });

  BotaoArtigo.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.titulo;
    return data;
  }
}