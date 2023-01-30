import 'package:chit_chat/widgets/message_list_item_widget.dart';
import 'package:flutter/cupertino.dart';

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const MessageListItemWidget(
          isMe: false,
        );
      },
    );
  }
}
