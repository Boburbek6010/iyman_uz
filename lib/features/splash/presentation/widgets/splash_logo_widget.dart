import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        width: MediaQuery.of(context).size.height / 2.51,
        height: MediaQuery.of(context).size.width / 1.86,
        image: const AssetImage("assets/images/splash/app_logo.png"),
      ),
    );
  }
}
