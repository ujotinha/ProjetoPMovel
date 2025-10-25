class Curiosidade {
  late String textExtract;
  late String text;
  late String year;

  Curiosidade({
    required this.textExtract,
    required this.text,
    required this.year,
  });

  Curiosidade.fromJson(Map<String, dynamic> json) {
    final firstPage = json['pages'][0];
    textExtract = firstPage['extract'] ?? '';
    year = json['year']?.toString() ?? '';
    text = json['text']?.toString() ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['textExtract'] = this.textExtract;
    data['text'] = this.text;
    data['year'] = this.year;
    return data;
  }
}
