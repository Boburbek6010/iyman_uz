import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';


class NamozTakbiriTahrima extends StatelessWidget {
  const NamozTakbiriTahrima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          "2.Такбири таҳрима",
          style: ThemeService.subtitleTextStyle2,
        ),
        const SizedBox(height: 10),
        const Image(
          image: AssetImage("assets/images/namoz/takbir.gif"),
          height: 220,
          width: 300,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Сўнг «Аллоҳу акбар» деб, қўлнинг бармоқларини ўз ҳолида очиқ тутиб, қулоқ баробарида кўтарамиз. Кейин ўнг қўлни чап қўлнинг устига қўйиб, киндик остида боғлаймиз.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}

