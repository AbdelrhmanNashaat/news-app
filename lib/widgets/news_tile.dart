import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/models/article_model.dart';

import '../views/web_view.dart';
import 'error_row_for_image.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel article;
  const NewsTile({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WebView(
              url: article.url,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.r),
            child: article.imagePath == null
                ? const ErrorRowForImage()
                : Image.network(
                    article.imagePath!,
                    height: 200.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            article.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            article.supTitle ?? 'No Subtitle Available',
            maxLines: 2,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Text(
                'Source :',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                article.source,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(
            color: Colors.black87,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
