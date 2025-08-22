class BotaoVideos{
  late String urlImage;

  BotaoVideos({
    required this.urlImage,
  });

  BotaoVideos.fromJson(Map<String, dynamic> json) {
    urlImage = json['urlImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.urlImage;
    return data;
  }
}