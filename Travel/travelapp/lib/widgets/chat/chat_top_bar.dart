import 'package:flutter/cupertino.dart';

class ChatTopBar extends StatelessWidget {
  final IconData icon;
  final IconData icon2;
  const ChatTopBar({super.key, required this.icon, required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 35, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(icon), Icon(icon2)],
      ),
    );
  }
}
