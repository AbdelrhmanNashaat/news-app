import 'package:dio/dio.dart';

import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(
    this.dio,
  );
  Future<List<ArticleModel>> getNews({
    required String category,
  }) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=4986125a79f940428f1ec6063a637600&category=$category');
      Map<String, dynamic> result = response.data;
      List<dynamic> articles = result['articles'];
      List<ArticleModel> articleModelList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromjson(article);
        articleModelList.add(articleModel);
      }
      return articleModelList;
    } catch (e) {
      return [];
    }
  }
}
