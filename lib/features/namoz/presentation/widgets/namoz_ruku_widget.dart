import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozRuku extends StatelessWidget {
  const NamozRuku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "4.Рукуъ",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(
          image: AssetImage("assets/images/namoz/ruku.gif"),
          height: 220,
          width: 300,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Фотиҳа ёки зам сурадан кейин такбир айтиб, рукуъга эгиламиз. Рукуъда болдирлар тик туради, икки қўл билан тиззаларни чангаллаб турамиз, тиззани букмаймиз, бошни эгмаймиз. Орқамиз ҳам текис туриши керак. Шу ҳолатда камида уч марта «Субҳаана Роббиял азийм» деймиз.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}
