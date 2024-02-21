import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'assets/general.avif',
      categoryName: 'General',
    ),
    CategoryModel(
      image: 'assets/business.avif',
      categoryName: 'Business',
    ),
  ];
  const CategoriesListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categories[index]);
        },
        itemCount: categories.length,
      ),
    );
  }
}
