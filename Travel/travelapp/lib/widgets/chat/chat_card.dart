import 'package:flutter/material.dart';
import '../../style/fonts.dart';

class ChatCard extends StatelessWidget {
  final String title;
  final ShapeBorder shape;
  final Color color;
  const ChatCard({
    super.key,
    required this.title,
    required this.shape,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Card(
        shape: shape,
        color: color,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Center(
            child: Text(
              title,
              style: chatCard,
            ),
          ),
        ),
      ),
    );
  }
}
