import 'package:chit_chat/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TextFormFieldWidgets(
          hintText: 'Search People',
          labelText: 'Search',
          prefixIcon: const Icon(Icons.search),
          controller: textController,
        ),
      ),
    );
  }
}
