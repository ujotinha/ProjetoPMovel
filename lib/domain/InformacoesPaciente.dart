class InfoPaciente{
  late String nome_Paciente;
  late String Data_Nascimento;
  late String Cpf;
  late String Diagnostico;

  InfoPaciente({
    required this.nome_Paciente,
    required this.Data_Nascimento,
    required this.Cpf,
    required this.Diagnostico,
  });

  InfoPaciente.fromJson(Map<String, dynamic> json) {
    nome_Paciente = json['nomePaciente'];
    Data_Nascimento = json['dt_nasc'];
    Cpf = json['cpf'];
    Diagnostico = json['diagnostico'];
  }

}
