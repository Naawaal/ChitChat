import 'package:chit_chat/screens/message_screen.dart';
import 'package:chit_chat/widgets/avatar_builder.dart';
import 'package:flutter/material.dart';

class ChatListItemWidget extends StatelessWidget {
  const ChatListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, MessageScreen.messageRoute),
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AvatarBuilderWidget(
              imageUrl:
                  'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Isolated-Transparent-Picture.png',
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'User Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'You have a new message',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
