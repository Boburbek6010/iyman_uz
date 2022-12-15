import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozSajdaThree extends StatelessWidget {
  const NamozSajdaThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "9.Сажда",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/sajda_3.gif"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Кейин такбир айтиб, иккинчи саждага борамиз ва камида уч марта «Субҳаана роббиял аъла» деймиз.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}