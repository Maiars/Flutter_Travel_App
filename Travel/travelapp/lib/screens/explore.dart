import 'package:file_manager/screens/Chat/chat.dart';
import 'package:file_manager/screens/Gallery/gallery.dart';
import 'package:file_manager/screens/compass.dart';
import 'package:file_manager/screens/Map/route.dart';
import 'package:file_manager/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: PageView(
        controller: pageController,
        children: const [
          Compass(),
          MapRoute(),
          Gallery(),
          Chat(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        child: BottomNavigationBar(
          backgroundColor: white,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.compass,
                color: black,
                size: 28,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.route,
                color: black,
                size: 28,
              ),
              label: 'Routes',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                size: 28,
                color: black,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_outlined,
                size: 28,
                color: black,
              ),
              label: 'Chat',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: onTapped,
        ),
      ),
    );
  }
}
