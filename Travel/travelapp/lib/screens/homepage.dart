import 'package:file_manager/widgets/homepage/homepage_button.dart';
import 'package:file_manager/widgets/homepage/homepage_text.dart';
import 'package:file_manager/style/fonts.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&w=1600"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          HomepageText(
            titleStyle: homepageTitle,
            title: 'Find new places',
            subtitle:
                'This is a new level of impressions\nand discoveries for you and\nand your friends',
            subtitleStyle: homepageSubtitle,
          ),
          HomepageButton(title: 'Start Travel', style: homepageButton)
        ],
      ),
    );
  }
}
