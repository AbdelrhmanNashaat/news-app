import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/models/category_model.dart';

import '../views/categorey_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryCard({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16).r,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CategoryView(category: categoryModel.categoryName);
              },
            ),
          );
        },
        child: Container(
          height: 75.h,
          width: 165.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                categoryModel.image,
              ),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(15).r,
          ),
          child: Center(
            child: Text(
              categoryModel.categoryName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
