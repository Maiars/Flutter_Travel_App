import 'package:file_manager/widgets/explore/cultural/cultural_card.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../../widgets/flipcard_back.dart';

class Cultural extends StatefulWidget {
  const Cultural({super.key});

  @override
  State<Cultural> createState() => _CulturalState();
}

class _CulturalState extends State<Cultural> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: const [
            FlipCard(
              front: CulturalCard(
                culturalTitle: 'Rome Cavalieri, A Waldorf Astoria Hotel',
                title: '\$280',
                subtitle: 'Rome, Italy',
                networkImage:
                    'https://aeworld.com/wp-content/uploads/2019/03/103703163.jpg',
              ),
              back: FlipCardBack(
                  title:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  info:
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  networkImage:
                      'https://aeworld.com/wp-content/uploads/2019/03/103703163.jpg'),
            ),
            FlipCard(
              front: CulturalCard(
                culturalTitle: 'Château Frontenac',
                title: '\$160',
                subtitle: 'Quebec, Canada',
                networkImage:
                    'https://cdn.getyourguide.com/img/location/5bd010b6e3a5a.jpeg/99.jpg',
              ),
              back: FlipCardBack(
                  title:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  info:
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  networkImage:
                      'https://cdn.getyourguide.com/img/location/5bd010b6e3a5a.jpeg/99.jpg'),
            ),
            FlipCard(
              front: CulturalCard(
                culturalTitle: 'Ashford Castle',
                title: '\$660',
                subtitle: 'Galway, Ireland',
                networkImage:
                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/8c/3d/fa/ashford-castle.jpg?w=700&h=-1&s=1',
              ),
              back: FlipCardBack(
                  title:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  info:
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  networkImage:
                      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/8c/3d/fa/ashford-castle.jpg?w=700&h=-1&s=1'),
            ),
          ],
        )
      ],
    ));
  }
}
