import 'package:flutter/material.dart';

class EveryItemWidget extends StatelessWidget {
  final Image image;
  final String text;
  final VoidCallback onPressed;

  const EveryItemWidget({Key? key, required this.image, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
          padding: const EdgeInsets.all(15),
          height: 105,
          width: 105,
          decoration: BoxDecoration(
              color: Colors.green.shade800.withOpacity(0.6),
              shape: BoxShape.circle),
          child: IconButton(
            splashRadius: 60,
            icon: image,
            splashColor: Colors.white,
            onPressed: () {
              onPressed();
            },
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
