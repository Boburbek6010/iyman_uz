import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozQada extends StatelessWidget {
  const NamozQada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "12.Қаъда",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/qada.gif"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Иккинчи ракъатнинг иккинчи саждасини қилиб бўлгандан кейин чап оёқ устига ўтирамиз, ўнг оёқнинг бармоқлари қиблага қараб тураверади. Ўнг қўлни ўнг тизза устига, чап қўлни чап тизза устига, бармоқларни ёйган ҳолда қўямиз. Кейин ташаҳҳуд ўқийди.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}