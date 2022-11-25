import 'package:file_manager/style/colors.dart';
import 'package:flutter/material.dart';

import '../../style/fonts.dart';

class FriendsList extends StatelessWidget {
  final String networkImage;
  final String title;
  const FriendsList({
    super.key,
    required this.networkImage,
    required this.title,
  });

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
        trailing: OutlinedButton(
            style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(darkblue),
                foregroundColor: const MaterialStatePropertyAll(white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: const BorderSide(color: Colors.red))),
                padding: const MaterialStatePropertyAll(EdgeInsets.all(15))),
            onPressed: () {},
            child: Text(
              'Following',
              style: friendsButton,
            )),
      ),
    );
  }
}
