class Botaoimagem{
  late String urlImage;
  late String tituloVideo;
  late String autor;

  Botaoimagem({
    required this.urlImage,
    required this.tituloVideo,
    required this.autor
  });

  Botaoimagem.fromJson(Map<String, dynamic> json) {
    urlImage = json['urlImage'];
    tituloVideo = json['tituloVideo'];
    autor = json['autor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['urlImage'] = this.urlImage;
    data['tituloVideo'] = this.tituloVideo;
    data['autor'] = this.autor;
    return data;
  }

}