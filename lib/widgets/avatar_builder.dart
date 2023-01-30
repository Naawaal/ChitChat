import 'package:flutter/material.dart';

class AvatarBuilderWidget extends StatelessWidget {
  final String imageUrl;
  const AvatarBuilderWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      margin: const EdgeInsets.all(5),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
