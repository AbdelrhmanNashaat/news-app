import 'package:flutter/material.dart';

class CircularIndicatorWidget extends StatelessWidget {
  const CircularIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.black87,
          strokeWidth: 4.5,
        ),
      ),
    );
  }
}
