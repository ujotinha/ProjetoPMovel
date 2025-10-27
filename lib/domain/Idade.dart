class Idade {
  late final int idade;

  Idade({
    required this.idade,
  });

  Idade.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> data = json['data'];
    idade = data['age_breakdown']['years'];
  }
}
