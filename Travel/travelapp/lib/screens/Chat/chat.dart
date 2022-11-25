import 'package:file_manager/screens/Chat/chat_list_ui.dart';
import 'package:file_manager/style/colors.dart';
import 'package:file_manager/widgets/chat/chat_card.dart';
import 'package:file_manager/widgets/chat/chat_top_bar.dart';
import 'package:flutter/material.dart';

import 'friends_list_ui.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int selectedCard = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Column(
          children: [
            const ChatTopBar(
                icon: Icons.search_outlined,
                icon2: Icons.notifications_active_outlined),
            const SizedBox(
              height: 25,
            ),
            _chatCard(),
            if (selectedCard == 1)
              const ChatListUI()
            else if (selectedCard == 2)
              const FriendsListUI(),
          ],
        ));
  }

  Container _chatCard() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {
                setState(
                  () {
                    selectedCard = 1;
                  },
                );
              },
              child: ChatCard(
                color: selectedCard == 1 ? orange : darkblue,
                title: 'Chat',
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              )),
          GestureDetector(
              onTap: () {
                setState(
                  () {
                    selectedCard = 2;
                  },
                );
              },
              child: ChatCard(
                color: selectedCard == 2 ? orange : darkblue,
                title: 'Friends',
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              )),
        ],
      ),
    );
  }
}
