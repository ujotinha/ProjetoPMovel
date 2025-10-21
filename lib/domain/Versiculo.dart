class Versiculo{
  late String texto;
  late String livro;
  late int capitulo;
  late int numero_versiculo;

  Versiculo({
    required this.texto,
    required this.livro,
    required this.capitulo,
    required this.numero_versiculo
  });

  Versiculo.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> randomVerseJson = json['random_verse'];
    texto = randomVerseJson['text'];
    livro = randomVerseJson['book'];
    capitulo = randomVerseJson['chapter'];
    numero_versiculo = randomVerseJson['verse'];
  }
}