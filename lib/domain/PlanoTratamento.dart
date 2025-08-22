class PlanoTratamento{
  late String Diagnostico;

  PlanoTratamento({
    required this.Diagnostico,
  });

  PlanoTratamento.fromJson(Map<String, dynamic> json) {
    Diagnostico = json['diagnostico'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['diagnostico'] = this.Diagnostico;
    return data;
  }
}
