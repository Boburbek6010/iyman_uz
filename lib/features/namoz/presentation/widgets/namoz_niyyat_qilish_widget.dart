import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozNiyyatQilish extends StatelessWidget {
  const NamozNiyyatQilish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          "1.Ният қилиш",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/niyat_qilish.png"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Намоз вақти киргач, таҳорат билан, пок кийим билан, покиза жойда туриб, қиблага юзланамиз ва ният қиламиз. Масалан, «Холис Аллоҳ учун бомдод намозининг икки ракъат фарзини ўқишга ният қилдим» деган мазмунда ният қиламиз. Имомга иқтидо қилган киши «шу имомга иқтидо қилиб» деб ҳам ният қиламиз. Ниятни пичирлаб, тилда ҳам айтиш мумкин, ичида айтиш ҳам мумкин.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}