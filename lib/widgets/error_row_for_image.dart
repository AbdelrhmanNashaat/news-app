import 'package:flutter/material.dart';

class ErrorRowForImage extends StatelessWidget {
  const ErrorRowForImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No Image Available',
          style: TextStyle(
              color: Colors.black87, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.error,
          size: 40,
          color: Colors.red,
        ),
      ],
    );
  }
}
