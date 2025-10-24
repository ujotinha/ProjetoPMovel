class Curiosidade {
  late String text;
  late String year;

  Curiosidade({
    required this.text,
    required this.year,
  });

  Curiosidade.fromJson(Map<String, dynamic> json) {
    // json['cep'] ?? ''
    // OU
    // if(json['cep'] != null){
    //   cep = json['cep'];
    // } else {
    //   cep = '';
    // }

    text = json['text'] ?? '';
    year = json['year'] ?? '';

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['year'] = this.year;
    return data;
  }
}