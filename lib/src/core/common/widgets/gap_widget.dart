import 'package:flutter/material.dart';

class GapWidget extends StatelessWidget {
  final double gap;
  const GapWidget({super.key, required this.gap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gap,
      width: gap,
    );
  }
}
