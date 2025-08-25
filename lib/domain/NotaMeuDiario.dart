class NotaDiario{
  late String nome_Nota;
  late String Data_Escrita;
  late String Dia;
  late String Conteudo;

  NotaDiario({
    required this.nome_Nota,
    required this.Data_Escrita,
    required this.Dia,
    required this.Conteudo,
  });

 NotaDiario.fromJson(Map<String, dynamic> json) {
    nome_Nota = json['nomeNota'];
    Data_Escrita = json['dt_escrita'];
    Dia = json['dia'];
    Conteudo = json['conteudo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nomeNota'] = this.nome_Nota;
    data['dt_escrita'] = this.Data_Escrita;
    data['dia'] = this.Dia;
    data['conteudo'] = this.Conteudo;
    return data;
  }
}
