import 'package:file_manager/widgets/explore/camping/camping_card.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../../widgets/flipcard_back.dart';

class Camping extends StatefulWidget {
  const Camping({super.key});

  @override
  State<Camping> createState() => _CampingState();
}

class _CampingState extends State<Camping> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: const [
            FlipCard(
              front: CampingCard(
                campingTitle: 'Hossa National Park',
                title: 'Free',
                subtitle: 'Suomussalmi, Finland',
                networkImage:
                    'https://images.pexels.com/photos/2422265/pexels-photo-2422265.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              back: FlipCardBack(
                  title:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  info:
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  networkImage:
                      'https://images.pexels.com/photos/1687845/pexels-photo-1687845.jpeg?auto=compress&cs=tinysrgb&w=1600'),
            ),
            FlipCard(
              front: CampingCard(
                campingTitle: 'Jasper National Park, Wapiti Campground',
                title: '\$38.5',
                subtitle: 'Connaught, Canada',
                networkImage:
                    'https://www.zentravellers.com/wp-content/uploads/2017/04/spirit-island-on-maligne-lake.jpg',
              ),
              back: FlipCardBack(
                  title:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  info:
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  networkImage:
                      'https://www.zentravellers.com/wp-content/uploads/2017/04/spirit-island-on-maligne-lake.jpg'),
            ),
            FlipCard(
              front: CampingCard(
                campingTitle: 'Acadia National Park',
                title: '\$15',
                subtitle: 'Maine, USA',
                networkImage:
                    'https://i.insider.com/5ed01a7daee6a8240e25ffa4?width=800&format=jpeg&auto=webp',
              ),
              back: FlipCardBack(
                  title:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                  info:
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  networkImage:
                      'https://i.insider.com/5ed01a7daee6a8240e25ffa4?width=800&format=jpeg&auto=webp'),
            ),
          ],
        )
      ],
    ));
  }
}
