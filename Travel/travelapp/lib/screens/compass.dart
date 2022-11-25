import 'package:file_manager/screens/Cultural/cultural.dart';
import 'package:file_manager/screens/Hotel/hotel.dart';
import 'package:file_manager/screens/Winter/winter.dart';
import 'package:file_manager/style/colors.dart';
import 'package:file_manager/widgets/explore/compass_card.dart';
import 'package:file_manager/widgets/explore/compass_search_bar.dart';
import 'package:file_manager/widgets/explore/compass_top_bar.dart';
import 'package:flutter/material.dart';

import 'Camping/camping.dart';

class Compass extends StatefulWidget {
  const Compass({super.key});

  @override
  State<Compass> createState() => _CompassState();
}

TextEditingController editingController = TextEditingController();

class _CompassState extends State<Compass> {
  int selectedCard = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          const CompassTopBar(
              title: 'Compass',
              networkImage:
                  'https://media.istockphoto.com/id/546763388/photo/the-perfect-vantage-point.jpg?s=612x612&w=0&k=20&c=o5XHlEhG_IkXq3i1_zwW4E_0hi5fulOBogSPyIy2uZA=',
              icon: Icons.notifications_outlined),
          ExploreSearchBar(controller: editingController, title: 'Search'),
          _cardList(context),
          if (selectedCard == 1)
            const Hotel()
          else if (selectedCard == 2)
            const Camping()
          else if (selectedCard == 3)
            const Winter()
          else if (selectedCard == 4)
            const Cultural(),
        ],
      ),
    );
  }

  Container _cardList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GestureDetector(
              onTap: () {
                setState(
                  () {
                    selectedCard = 1;
                  },
                );
              },
              child: const ExploreCard(title: 'Hotel')),
          GestureDetector(
              onTap: () {
                setState(
                  () {
                    selectedCard = 2;
                  },
                );
              },
              child: const ExploreCard(title: 'Camping')),
          GestureDetector(
              onTap: () {
                setState(
                  () {
                    selectedCard = 3;
                  },
                );
              },
              child: const ExploreCard(title: 'Winter')),
          GestureDetector(
              onTap: () {
                setState(
                  () {
                    selectedCard = 4;
                  },
                );
              },
              child: const ExploreCard(title: 'Cultural')),
        ],
      ),
    );
  }
}
