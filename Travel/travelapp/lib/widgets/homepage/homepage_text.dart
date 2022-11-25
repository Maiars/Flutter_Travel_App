import 'package:flutter/material.dart';

class HomepageText extends StatelessWidget {
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  final String title;
  final String subtitle;
  const HomepageText(
      {super.key,
      required this.titleStyle,
      required this.title,
      required this.subtitle,
      required this.subtitleStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 125),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(
                title,
                style: titleStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                subtitle,
                style: subtitleStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}
