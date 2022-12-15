import 'package:flutter/material.dart';

class IntroView extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const IntroView(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.height / 21.1,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        Text(
          subtitle,
          style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.height / 27.1,
              fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
