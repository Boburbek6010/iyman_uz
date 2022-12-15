import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozSajdaTwo extends StatelessWidget {
  const NamozSajdaTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "7.Сажда",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/sajda_2.gif"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Саждада турганда қўлнинг бармоқлари қиблага қараб туриши керак. Пешона билан бурунни ерга теккизамиз, қўлтиқларимиз очилиб туради, қорин сонга тегмай туради. Оёқ бармоқлари ҳам қиблага қараб туради. Шу ҳолатда камида уч марта «Субҳаана роббиял аъла» деймиз.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}