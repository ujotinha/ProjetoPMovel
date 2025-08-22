class Medicamento{
  late String nome_medicamento;
  late String horario_medicamento;
  late String data_medicamento;

  Medicamento({
    required this.nome_medicamento,
    required this.horario_medicamento,
    required this.data_medicamento,
  });

  Medicamento.fromJson(Map<String, dynamic> json) {
    nome_medicamento = json['nome'];
    horario_medicamento = json['horario'];
    data_medicamento = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome_medicamento;
    data['horario'] = this.horario_medicamento;
    data['data'] = this.data_medicamento;
    return data;
  }
}
