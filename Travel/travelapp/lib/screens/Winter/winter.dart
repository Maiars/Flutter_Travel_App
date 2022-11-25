import 'package:file_manager/widgets/explore/winter/winter_card.dart';
import 'package:file_manager/widgets/flipcard_back.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class Winter extends StatefulWidget {
  const Winter({super.key});

  @override
  State<Winter> createState() => _WinterState();
}

class _WinterState extends State<Winter> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: const [
            FlipCard(
              front: WinterCard(
                winterTitle: '''Val d'Isere''',
                title: '€60',
                subtitle: 'Tarentaise Valley, France',
                networkImage:
                    'https://www.planetware.com/wpimages/2018/10/top-ski-resorts-world-france-savoie-val-disere.jpg',
              ),
              back: FlipCardBack(
                  title:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  info:
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  networkImage:
                      'https://www.planetware.com/wpimages/2018/10/top-ski-resorts-world-france-savoie-val-disere.jpg'),
            ),
            FlipCard(
              front: WinterCard(
                winterTitle: '''Badrutt's Palace Hotel St. Moritz''',
                title: '\$1500',
                subtitle: 'Saint-Moritz, Switzerland',
                networkImage:
                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/3b/f3/c8/badrutt-s-palace-hotel.jpg?w=700&h=-1&s=1',
              ),
              back: FlipCardBack(
                  title:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  info:
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  networkImage:
                      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/3b/f3/c8/badrutt-s-palace-hotel.jpg?w=700&h=-1&s=1'),
            ),
            FlipCard(
              front: WinterCard(
                winterTitle: 'Tschuggen Grand Hotel',
                title: '\$650',
                subtitle: 'Arosa, Switzerland',
                networkImage:
                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/d3/df/3f/tschuggen-grand-hotel.jpg?w=700&h=-1&s=1',
              ),
              back: FlipCardBack(
                  title:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  info:
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  networkImage:
                      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/3b/f3/c8/badrutt-s-palace-hotel.jpg?w=700&h=-1&s=1'),
            ),
          ],
        )
      ],
    ));
  }
}
