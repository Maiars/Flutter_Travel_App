import 'package:file_manager/style/colors.dart';
import 'package:file_manager/style/fonts.dart';
import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  final String title;
  const ExploreCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: oldwhite,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Center(
          child: Text(
            title,
            style: compassCard,
          ),
        ),
      ),
    );
  }
}
