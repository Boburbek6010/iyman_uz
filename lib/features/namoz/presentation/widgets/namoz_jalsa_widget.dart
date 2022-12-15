import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozJalsa extends StatelessWidget {
  const NamozJalsa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "8.Жалса",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/jalsa.gif"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Кейин такбир айтиб, саждадан бошни кўтарамиз ва чап оёқни ётқизи, унинг устига ўтирамиз. Ўнг оёқ тик ҳолатда қолади, бармоқлари қиблага қараб туради. Икки қўлимиз икки тиззанинг устида бўлади.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}