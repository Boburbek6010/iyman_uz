import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';


class NamozQiyom extends StatelessWidget {
  const NamozQiyom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "3.Қиём",
          style: ThemeService.subtitleTextStyle2,
        ),
        const Image(image: AssetImage("assets/images/namoz/qiyom.png"), height: 220, width: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Агар имомга иқтидо қилган бўлсак, «сано»дан бошқа нарсани айтмаймиз. Сўнгра ичимизда «Аъузу биллаҳи минаш шайтонир рожийм. Бисмиллаҳир роҳманир роҳийм»ни айтамиз. Бир ўзимиз ўқиётган бўлсак, Фотиҳа сурасини ўқиймиз. Кейин ичимизда «Омийн» деймиз. Суннат, нафл, вожиб намозларнинг ҳар ракъатида, фарз намозларнинг эса биринчи икки ракъатида Фотиҳа сурасидан кейин зам сура, яъни бирор сура ёки узунроқ оят ёки камида учта қисқа оят ўқилади. (Қуйида мисол учун Нас сураси берилди.) Фарз намозларнинг учинчи ва тўртинчи ракъатида Фотиҳа сурасидан кейин зам сура ўқилмайди.",
            style: ThemeService.contentTextStyle,
          ),
        ),
      ],
    );
  }
}