class Consulta {
  late String especialidade;
  late String nomemedico;
  late String horario;
  late String data;

  Consulta({
    required this.especialidade,
    required this.nomemedico,
    required this.horario,
    required this.data,
  });

  Consulta.fromJson(Map<String, dynamic> json) {
    especialidade = json['especialidade'];
    nomemedico = json['nomemedico'];
    horario = json['horario'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['especialidade'] = this.especialidade;
    data['nomemedico'] = this.nomemedico;
    data['horario'] = this.horario;
    data['data'] = this.data;
    return data;
  }
}