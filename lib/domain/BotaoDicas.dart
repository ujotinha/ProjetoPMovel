class BotaoDicas{
  late String titulo;

  BotaoDicas({
    required this.titulo,
  });

  BotaoDicas.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.titulo;
    return data;
  }
}