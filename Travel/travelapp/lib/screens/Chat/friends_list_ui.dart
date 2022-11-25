import 'package:file_manager/widgets/chat/friends_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendsListUI extends StatelessWidget {
  const FriendsListUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          FriendsList(
            networkImage:
                'https://c4.wallpaperflare.com/wallpaper/54/967/703/traveller-mountains-bag-wallpaper-thumb.jpg',
            title: 'Can Kayacan',
          ),
          FriendsList(
            networkImage:
                'https://www.incimages.com/uploaded_files/image/1920x1080/getty_472502990_122739.jpg',
            title: 'Caryl Garey',
          ),
          FriendsList(
            networkImage:
                'https://explore.bustickets.com/wp-content/uploads/2019/09/solo-travel-backpack-tips.jpg',
            title: 'Clarice Deacon',
          ),
          FriendsList(
            networkImage:
                'https://media.guideku.com/thumbs/2019/02/16/47430-tipe-traveler-berdasar-cara-packing/745x489-img-47430-tipe-traveler-berdasar-cara-packing.jpg',
            title: 'Auston Bloxam',
          ),
          FriendsList(
            networkImage:
                'https://img.freepik.com/free-photo/man-with-rucksack-sitting-rock-sunset-volcano-etna-mountain-sicily_8353-6518.jpg?w=2000',
            title: 'Ginny Campos',
          ),
          FriendsList(
            networkImage:
                'https://img.freepik.com/premium-photo/hiking-tourist-sitting-top-mountain-hill-looking-mountains-with-backpack-boots-standing-him_555047-508.jpg?w=2000',
            title: 'Alfreda Ruggiero',
          ),
        ],
      ),
    );
  }
}
