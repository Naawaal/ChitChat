import 'package:chit_chat/widgets/avatar_builder.dart';
import 'package:flutter/material.dart';

class MessageListItemWidget extends StatelessWidget {
  final bool isMe;
  const MessageListItemWidget({super.key, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          AvatarBuilderWidget(
              imageUrl: isMe
                  ? 'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
                  : 'https://www.imageconsultinginstitute.com/wp-content/uploads/2021/12/smiling-confident-businesswoman-posing-with-arms-folded.jpg'),
          const SizedBox(height: 10),
          _messageBoxBuilder(),
        ],
      ),
    );
  }

  Widget _messageBoxBuilder() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isMe ? 10 : 0),
          topRight: Radius.circular(isMe ? 0 : 10),
          bottomLeft: const Radius.circular(10),
          bottomRight: const Radius.circular(10),
        ),
        border: Border.all(
          color: isMe ? Colors.blue : Colors.grey,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          isMe ? 'Hello, how are you?' : 'I am fine, how are you?',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
