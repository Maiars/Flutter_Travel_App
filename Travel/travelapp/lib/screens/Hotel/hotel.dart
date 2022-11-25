import 'package:file_manager/widgets/explore/hotel/hotel_card.dart';
import 'package:file_manager/widgets/flipcard_back.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: const [
            FlipCard(
              front: HotelCard(
                hoteltitle: 'Le Méridien Barcelona',
                title: '\$1200',
                subtitle: 'Barcelona, Spain',
                networkImage:
                    'https://images.pexels.com/photos/3225531/pexels-photo-3225531.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              back: FlipCardBack(
                info:
                    'The rich Barcelona’s artistic heritage inspires your experience while enjoying the local culture with all main attractions within walking distance.',
                title:
                    'Uncover sights, sounds and aromas in the heart of Barcelona',
                networkImage:
                    'https://cache.marriott.com/content/dam/marriott-renditions/BCNMD/bcnmd-centonze-restaurant-5470-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1215px:*',
              ),
            ),
            FlipCard(
              front: HotelCard(
                  title: '\$740',
                  networkImage:
                      'https://images.pexels.com/photos/1697076/pexels-photo-1697076.jpeg',
                  subtitle: 'Venice, Italy',
                  hoteltitle: 'Hotel Excelsior Venice'),
              back: FlipCardBack(
                info:
                    'Relax on our secluded island. Then take our private water taxi and make a grand entrance in romantic, bustling Venice: only minutes away, yet feeling a world apart.',
                title:
                    'Hotel Excelsior at Venice Lido provides five-star exclusivity with laid-back serenity.',
                networkImage:
                    'https://www.hotelexcelsiorvenezia.com/media/1826/fb1_3319.jpg?anchor=center&mode=crop&quality=65&width=1258&height=685&rnd=132608983300000000',
              ),
            ),
            FlipCard(
              front: HotelCard(
                hoteltitle: 'InterContinental Paris Le Grand',
                title: '\$900',
                subtitle: 'Paris, France',
                networkImage:
                    'https://pix8.agoda.net/hotelImages/44638/0/3f2496c68774f47e62b274a0c7977b3c.jpg?ca=7&ce=1&s=1024x768',
              ),
              back: FlipCardBack(
                info:
                    '''Offering historic charm in central Paris since 1862, this luxury hotel's sumptuous rooms and suites have superb views of the world-famous Opera Garnier.''',
                title:
                    'Discover the historic setting of the Café de la Paix, a legend of Parisian life since 1862. ',
                networkImage:
                    'https://cache.marriott.com/content/dam/marriott-renditions/BCNMD/bcnmd-centonze-restaurant-5470-hor-clsc.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1215px:*',
              ),
            ),
          ],
        )
      ],
    ));
  }
}
