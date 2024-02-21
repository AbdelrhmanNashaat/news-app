class ArticleModel {
  final String? imagePath;
  final String title;
  final String? supTitle;
  final String source;
  final String url;

  ArticleModel({
    required this.url,
    required this.source,
    required this.imagePath,
    required this.title,
    required this.supTitle,
  });
  factory ArticleModel.fromjson(json) {
    return ArticleModel(
      url: json['url'],
      source: json['source']['name'],
      imagePath: json['urlToImage'],
      title: json['title'],
      supTitle: json['supTitle'],
    );
  }
}
