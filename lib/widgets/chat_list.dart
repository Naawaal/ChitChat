import 'package:chit_chat/widgets/chat_list_item.dart';
import 'package:flutter/cupertino.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ChatListItemWidget();
      },
    );
  }
}
