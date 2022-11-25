import 'package:flutter/cupertino.dart';

import '../../style/fonts.dart';

class RouteTopBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final IconData icon2;
  const RouteTopBar(
      {super.key,
      required this.title,
      required this.icon,
      required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 35, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon),
          Text(
            title,
            style: compassTitle,
          ),
          Icon(icon2)
        ],
      ),
    );
  }
}
