class Idade {
  late final int anos;
  late final int meses;
  late final int dias;
  late final int totaldias;
  late final String dob;

  Idade({
    required this.anos,
    required this.meses,
    required this.dias,
    required this.totaldias,
    required this.dob,
  });

  Idade.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> breakdown = json['age_breakdown'];
    anos = breakdown['years'];
    meses = breakdown['months'];
    dias = breakdown['days'];
    totaldias = breakdown['days'];
    dob = json['dob'];
  }
}
