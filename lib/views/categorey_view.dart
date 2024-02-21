import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: const TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsListViewBuilder(category: category),
          ],
        ),
      ),
    );
  }
}
