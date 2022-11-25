import 'package:flutter/material.dart';

import '../../style/fonts.dart';

class CompassTopBar extends StatelessWidget {
  final String title;
  final String networkImage;
  final IconData icon;
  const CompassTopBar({
    super.key,
    required this.title,
    required this.networkImage,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 35, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipOval(
            child: Image.network(
              networkImage,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            title,
            style: compassTitle,
          ),
          Icon(icon),
        ],
      ),
    );
  }
}
