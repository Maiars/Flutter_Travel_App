import 'package:flutter/cupertino.dart';

import '../../widgets/chat/chat_list.dart';

class ChatListUI extends StatelessWidget {
  const ChatListUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          ChatList(
              networkImage:
                  'https://c4.wallpaperflare.com/wallpaper/54/967/703/traveller-mountains-bag-wallpaper-thumb.jpg',
              title: 'Can Kayacan',
              subtitle:
                  '''You'll see the rainbow bridge after it rains cats and dogs.''',
              clock: '05.32 AM'),
          ChatList(
              networkImage:
                  'https://www.incimages.com/uploaded_files/image/1920x1080/getty_472502990_122739.jpg',
              title: 'Caryl Garey',
              subtitle:
                  'She let the balloon float up into the air with her hopes and dreams.',
              clock: '11.23 PM'),
          ChatList(
              networkImage:
                  'https://explore.bustickets.com/wp-content/uploads/2019/09/solo-travel-backpack-tips.jpg',
              title: 'Clarice Deacon',
              subtitle:
                  'I met an interesting turtle while the song on the radio blasted away.',
              clock: '10.05 AM'),
          ChatList(
              networkImage:
                  'https://media.guideku.com/thumbs/2019/02/16/47430-tipe-traveler-berdasar-cara-packing/745x489-img-47430-tipe-traveler-berdasar-cara-packing.jpg',
              title: 'Auston Bloxam',
              subtitle:
                  'We have never been to Asia, nor have we visited Africa.',
              clock: '09.22 AM'),
          ChatList(
              networkImage:
                  'https://img.freepik.com/free-photo/man-with-rucksack-sitting-rock-sunset-volcano-etna-mountain-sicily_8353-6518.jpg?w=2000',
              title: 'Ginny Campos',
              subtitle:
                  'No matter how beautiful the sunset, it saddened her knowing she was one day older.',
              clock: '10.22 PM'),
          ChatList(
              networkImage:
                  'https://img.freepik.com/premium-photo/hiking-tourist-sitting-top-mountain-hill-looking-mountains-with-backpack-boots-standing-him_555047-508.jpg?w=2000',
              title: 'Alfreda Ruggiero',
              subtitle: 'I am never at home on Sundays.',
              clock: '11.05 PM'),
          ChatList(
              networkImage:
                  'https://cdn.travelpulse.com/images/99999999-9999-9999-9999-999999999999/91407e1c-c2f8-fa59-9f44-2823b507db89/630x355.jpg',
              title: 'Bertram Roux',
              subtitle:
                  'The tortoise jumped into the lake with dreams of becoming a sea turtle.',
              clock: '12.24 AM')
        ],
      ),
    );
  }
}
