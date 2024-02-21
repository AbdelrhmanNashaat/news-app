import 'package:flutter/material.dart';

class ErrorTextWidget extends StatelessWidget {
  const ErrorTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Cannot load news. Please try again later.',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
