import 'package:chit_chat/widgets/message_list_widget.dart';
import 'package:chit_chat/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  static const String messageRoute = 'Messages';

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

TextEditingController message = TextEditingController();

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: const MessageList(),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: TextFormFieldWidgets(
          hintText: 'Messages',
          labelText: '',
          prefixIcon: const Icon(Icons.message_rounded),
          controller: message,
        ),
      ),
    );
  }
}
