import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../services/news_service.dart';
import 'circular_indicator_widget.dart';
import 'error_text_widget.dart';
import 'news_tile_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future = Future.value(<ArticleModel>[]);
  @override
  void initState() {
    future = NewsService(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsTileListView(articles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: ErrorTextWidget(),
            ),
          );
        } else {
          return const CircularIndicatorWidget();
        }
      },
    );
  }
}
