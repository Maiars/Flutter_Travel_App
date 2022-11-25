import 'package:file_manager/style/fonts.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final String networkImage;
  final String title;
  final String subtitle;
  final String clock;
  const ChatList(
      {super.key,
      required this.networkImage,
      required this.title,
      required this.subtitle,
      required this.clock});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      child: ListTile(
        leading: ClipOval(
          child: Image.network(
            networkImage,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Text(
            title,
            style: chatTitle,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            subtitle,
            style: chatSubtitle,
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: Text(
            clock,
            style: chatClock,
          ),
        ),
      ),
    );
  }
}
//  'https://c4.wallpaperflare.com/wallpaper/54/967/703/traveller-mountains-bag-wallpaper-thumb.jpg',