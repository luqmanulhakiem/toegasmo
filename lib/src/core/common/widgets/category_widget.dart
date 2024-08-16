import 'package:flutter/material.dart';
import 'package:toegasmo_app/src/core/themes/app_palette.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      margin: const EdgeInsets.only(right: 10),
      height: double.infinity,
      decoration: BoxDecoration(
        color: AppPalette.primary,
        borderRadius: BorderRadius.circular(80),
      ),
      child: const Center(
        child: Text("A"),
      ),
    );
  }
}
