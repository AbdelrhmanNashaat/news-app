import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/models/article_model.dart';

import 'news_tile.dart';

List<ArticleModel> articles = [];

class NewsTileListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsTileListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 22.r),
          child: NewsTile(article: articles[index]),
        ),
      ),
    );
  }
}
