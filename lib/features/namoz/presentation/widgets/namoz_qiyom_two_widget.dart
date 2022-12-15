import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozQiyomTwo extends StatelessWidget {
  const NamozQiyomTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "5.Қиём",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/qiyom_2.gif"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Намозни ёлғиз ўқиётган бўлсак, «Самиъаллоҳу лиман ҳамидаҳ» деб, қаддимизни тиклаймиз ва «Роббанаа, лакал ҳамд» деймиз. Жамоат намозида эса имом «Самиъаллоҳу лиман ҳамидаҳ» деймиз, иқтидо қилганлар эса ичида «Роббанаа, лакал ҳамд» дейди.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}