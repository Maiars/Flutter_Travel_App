import 'package:file_manager/style/colors.dart';
import 'package:file_manager/style/icon_list.dart';
import 'package:flutter/material.dart';

import '../style/fonts.dart';

class FlipCardBack extends StatelessWidget {
  final String title;
  final String info;
  final String networkImage;
  const FlipCardBack({
    super.key,
    required this.title,
    required this.info,
    required this.networkImage,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: oldwhite,
        ),
        margin: const EdgeInsets.fromLTRB(10, 15, 10, 5),
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: flipCardTitle,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Image.network(
                  networkImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                info,
                style: flipCardSubtitle,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 45),
                shrinkWrap: true,
                children: iconTypes
                    .map((icon) => Icon(
                          icon,
                          color: darkblue,
                        ))
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(darkblue),
                        foregroundColor: const MaterialStatePropertyAll(white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        )),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12))),
                    onPressed: () {},
                    child: Text(
                      'Get Reservation',
                      style: friendsButton,
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
