class InfoPacienteApiFake {
  late String nome_Paciente;
  late String Data_Nascimento;
  late String Cpf;
  late String Diagnostico;

  InfoPacienteApiFake({
    required this.nome_Paciente,
    required this.Data_Nascimento,
    required this.Cpf,
    required this.Diagnostico,
  });

  InfoPacienteApiFake.fromJson(Map<String, dynamic> json) {
    nome_Paciente = json['nomePaciente'];
    Data_Nascimento = json['dt_nasc'];
    Cpf = json['cpf'];
    Diagnostico = json['diagnostico'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nomePaciente'] = this.nome_Paciente;
    data['dt_nasc'] = this.Data_Nascimento;
    data['cpf'] = this.Cpf;
    data['diagnostico'] = this.Diagnostico;
    return data;
  }
}
