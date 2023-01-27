import 'package:flutter/widgets.dart';

class ImageWidget extends StatelessWidget {
  final String image;
  const ImageWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      margin: const EdgeInsets.only(top: 5, bottom: 10),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
