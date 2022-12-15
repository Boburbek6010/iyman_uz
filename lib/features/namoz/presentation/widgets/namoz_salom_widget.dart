import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozSalom extends StatelessWidget {
  const NamozSalom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "13.Салом",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/salom.gif"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Агар намози икки ракъатли бўлса, ташаҳҳуддан кейин салавотларни («Аллоҳумма солли...» ва «Аллоҳумма барик...»ларни) ўқиймиз.Сўнг бошқа дуоларни ўқиб, «Ассалому алайкум ва раҳматуллоҳи» деб, ўнг ва чап томонларига қараб салом берамиз.Агар намоз уч ёки тўрт ракъатли бўлса, икки ракъатнинг ташаҳҳудини ўқиб бўлиб, кейин учинчи ракъатга турамиз ва худди иккинчи ракъатга ўхшатиб, намозни давом эттирамиз. Лекин учинчи ва тўртинчи ракъатларда фақат Фотиҳанинг ўзини ўқиймиз, зам сура ўқимаймиз. Тўртинчи ракъатнинг иккинчи саждасидан кейин ўтириб, ташаҳҳуд, салавот ва дуоларни ўқиб, икки томонга салом берамиз.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}