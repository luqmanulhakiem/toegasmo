import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: "your keyword",
        label: Text("Search"),
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
