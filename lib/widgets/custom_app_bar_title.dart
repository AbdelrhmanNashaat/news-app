import 'package:flutter/material.dart';

class CustomAppBarTitle extends StatelessWidget {
  const CustomAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'News',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          'Cloud',
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
