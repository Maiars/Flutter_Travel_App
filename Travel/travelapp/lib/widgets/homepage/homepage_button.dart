import 'package:file_manager/screens/explore.dart';
import 'package:flutter/material.dart';

import '../../style/colors.dart';

class HomepageButton extends StatelessWidget {
  final String title;
  final TextStyle style;
  const HomepageButton({super.key, required this.title, required this.style});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: white, borderRadius: BorderRadius.circular(18)),
                margin: const EdgeInsets.only(bottom: 40),
                height: 60,
                width: MediaQuery.of(context).size.width * 0.8,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Explore(),
                          ));
                    },
                    child: Text(
                      title,
                      style: style,
                    ))),
          ],
        ),
      ],
    );
  }
}
