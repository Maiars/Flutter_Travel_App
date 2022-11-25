import 'package:file_manager/style/colors.dart';
import 'package:flutter/material.dart';

import '../../../style/fonts.dart';

class HotelCard extends StatelessWidget {
  final String title;
  final String networkImage;
  final String subtitle;
  final String hoteltitle;
  const HotelCard({
    super.key,
    required this.title,
    required this.networkImage,
    required this.subtitle,
    required this.hoteltitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 15, 10, 5),
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Image.network(
              networkImage,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(20),
            leading: Card(
              color: magnolia,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(title, style: compassHolidayTitle),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  hoteltitle,
                  style: compassHolidaySubtitle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  subtitle,
                  style: compassHolidayplace,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
