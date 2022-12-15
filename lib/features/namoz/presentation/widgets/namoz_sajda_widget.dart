import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozSajda extends StatelessWidget {
  const NamozSajda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "6.Сажда",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/sajda.gif"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Қаддимизни тўлиқ тиклаб, тик туриб олгач, такбир айтиб, саждага кетамиз.Саждага бораётганида аввал тиззани, кейин қўлни ерга қўямиз, кейин эса икки қўлнинг орасига бошимизни қўямиз.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}