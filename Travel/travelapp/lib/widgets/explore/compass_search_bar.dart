import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/fonts.dart';

class ExploreSearchBar extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const ExploreSearchBar(
      {super.key, required this.controller, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      margin: const EdgeInsets.fromLTRB(25, 25, 25, 20),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextField(
          onChanged: (value) {},
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: compassSearchBar,
            hintText: title,
            prefixIcon: const Icon(
              Icons.search_outlined,
              color: black,
            ),
          ),
        ),
      ),
    );
  }
}
