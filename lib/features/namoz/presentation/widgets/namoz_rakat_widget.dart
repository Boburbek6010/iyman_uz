import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozRakat extends StatelessWidget {
  const NamozRakat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "11.Иккинчи ракаъат",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/ikkinchi_rakat.gif"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Иккинчи ракъат ҳам худди биринчи ракъатга ўхшаб ўқилади. Фақат бошида такбири таҳрима, сано ва «аъузу» айтилмайди. Фотиҳани ўқиб, сўнг зам сурани ўқиб, такбир айтиб рукуъга эгиламиз. Кейин туриб, такбир айтиб, икки марта сажда қиламиз.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}