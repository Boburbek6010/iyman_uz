import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozQiyomThree extends StatelessWidget {
  const NamozQiyomThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "10.Қиём",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/qiyom_3.gif"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Яна такбир айтиб, кейинги ракъатга турамиз. Саждадан туришда аввал бошни, кейин қўлларни, кейин тиззани кўтарамиз.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}