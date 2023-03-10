import 'package:flutter/material.dart';
import 'package:iyman_uz/features/namoz/presentation/widgets/namoz_widgets.dart';

import '../../../../../core/colors/app_color.dart';

class ErkaklarNamozi extends StatelessWidget {
  const ErkaklarNamozi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Erkaklar Namozi"),
        centerTitle: true,
        backgroundColor: AppColors.namozScreenAppBarColor,
        leading: IconButton(
          splashRadius: 25,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: AppColors.backgroundColorIntroPage,
          ),
        ),
      ),
      backgroundColor: AppColors.backgroundColorIntroPage,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          SizedBox(height: 20),
          NamozWidgets(text: "1.Ният қилиш", image: "assets/images/namoz/niyat_qilish.png", content: "Намоз вақти киргач, таҳорат билан, пок кийим билан, покиза жойда туриб, қиблага юзланамиз ва ният қиламиз. Масалан, «Холис Аллоҳ учун бомдод намозининг икки ракъат фарзини ўқишга ният қилдим» деган мазмунда ният қиламиз. Имомга иқтидо қилган киши «шу имомга иқтидо қилиб» деб ҳам ният қиламиз. Ниятни пичирлаб, тилда ҳам айтиш мумкин, ичида айтиш ҳам мумкин."),
          SizedBox(height: 20),
          NamozWidgets(text: "2.Такбири таҳрима", image: "assets/images/namoz/takbir.gif", content: "Сўнг «Аллоҳу акбар» деб, қўлнинг бармоқларини ўз ҳолида очиқ тутиб, қулоқ баробарида кўтарамиз. Кейин ўнг қўлни чап қўлнинг устига қўйиб, киндик остида боғлаймиз."),
          SizedBox(height: 20),
          NamozWidgets(text: "3.Қиём", image: "assets/images/namoz/qiyom.png", content: "Агар имомга иқтидо қилган бўлсак, «сано»дан бошқа нарсани айтмаймиз.Сўнгра ичимизда «Аъузу биллаҳи минаш шайтонир рожийм. Бисмиллаҳир роҳманир роҳийм»ни айтамиз.Бир ўзимиз ўқиётган бўлсак, Фотиҳа сурасини ўқиймиз. Кейин ичимизда «Омийн» деймиз.Суннат, нафл, вожиб намозларнинг ҳар ракъатида, фарз намозларнинг эса биринчи икки ракъатида Фотиҳа сурасидан кейин зам сура, яъни бирор сура ёки узунроқ оят ёки камида учта қисқа оят ўқилади.Фарз намозларнинг учинчи ва тўртинчи ракъатида Фотиҳа сурасидан кейин зам сура ўқилмайди."),
          SizedBox(height: 20),
          NamozWidgets(text: "4.Рукуъ", image: "assets/images/namoz/ruku.gif", content: "Фотиҳа ёки зам сурадан кейин такбир айтиб, рукуъга эгиламиз. Рукуъда болдирлар тик туради, икки қўл билан тиззаларни чангаллаб турамиз, тиззани букмаймиз, бошни эгмаймиз. Орқамиз ҳам текис туриши керак. Шу ҳолатда камида уч марта «Субҳаана Роббиял азийм» деймиз."),
          SizedBox(height: 20),
          NamozWidgets(text: "5.Қиём", image: "assets/images/namoz/qiyom_2.gif", content: "Намозни ёлғиз ўқиётган бўлсак, «Самиъаллоҳу лиман ҳамидаҳ» деб, қаддимизни тиклаймиз ва «Роббанаа, лакал ҳамд» деймиз. Жамоат намозида эса имом «Самиъаллоҳу лиман ҳамидаҳ» деймиз, иқтидо қилганлар эса ичида «Роббанаа, лакал ҳамд» дейди."),
          SizedBox(height: 20),
          NamozWidgets(text: "6.Сажда", image: "assets/images/namoz/sajda.gif", content: "Қаддимизни тўлиқ тиклаб, тик туриб олгач, такбир айтиб, саждага кетамиз.Саждага бораётганида аввал тиззани, кейин қўлни ерга қўямиз, кейин эса икки қўлнинг орасига бошимизни қўямиз."),
          SizedBox(height: 20),
          NamozWidgets(text: "7.Сажда", image: "assets/images/namoz/sajda_2.gif", content: "Саждада турганда қўлнинг бармоқлари қиблага қараб туриши керак. Пешона билан бурунни ерга теккизамиз, қўлтиқларимиз очилиб туради, қорин сонга тегмай туради. Оёқ бармоқлари ҳам қиблага қараб туради. Шу ҳолатда камида уч марта «Субҳаана роббиял аъла» деймиз."),
          SizedBox(height: 20),
          NamozWidgets(text: "8.Жалса", image: "assets/images/namoz/jalsa.gif", content: "Кейин такбир айтиб, саждадан бошни кўтарамиз ва чап оёқни ётқизи, унинг устига ўтирамиз. Ўнг оёқ тик ҳолатда қолади, бармоқлари қиблага қараб туради. Икки қўлимиз икки тиззанинг устида бўлади."),
          SizedBox(height: 20),
          NamozWidgets(text: "9.Сажда", image: "assets/images/namoz/sajda_3.gif", content: "Кейин такбир айтиб, иккинчи саждага борамиз ва камида уч марта «Субҳаана роббиял аъла» деймиз."),
          SizedBox(height: 20),
          NamozWidgets(text: "10.Қиём", image: "assets/images/namoz/qiyom_3.gif", content: "Яна такбир айтиб, кейинги ракъатга турамиз. Саждадан туришда аввал бошни, кейин қўлларни, кейин тиззани кўтарамиз."),
          SizedBox(height: 20),
          NamozWidgets(text: "11.Иккинчи ракаъат", image: "assets/images/namoz/qiyom.png", content: "Иккинчи ракъат ҳам худди биринчи ракъатга ўхшаб ўқилади. Фақат бошида такбири таҳрима, сано ва «аъузу» айтилмайди. Фотиҳани ўқиб, сўнг зам сурани ўқиб, такбир айтиб рукуъга эгиламиз. Кейин туриб, такбир айтиб, икки марта сажда қиламиз."),
          SizedBox(height: 20),
          NamozWidgets(text: "12.Қаъда", image: "assets/images/namoz/qada.gif", content: "Иккинчи ракъатнинг иккинчи саждасини қилиб бўлгандан кейин чап оёқ устига ўтирамиз, ўнг оёқнинг бармоқлари қиблага қараб тураверади. Ўнг қўлни ўнг тизза устига, чап қўлни чап тизза устига, бармоқларни ёйган ҳолда қўямиз. Кейин ташаҳҳуд ўқийди."),
          SizedBox(height: 20),
          NamozWidgets(text: "13.Салом", image: "assets/images/namoz/salom.gif", content: "Агар намози икки ракъатли бўлса, ташаҳҳуддан кейин салавотларни («Аллоҳумма солли...» ва «Аллоҳумма барик...»ларни) ўқиймиз.Сўнг бошқа дуоларни ўқиб, «Ассалому алайкум ва раҳматуллоҳи» деб, ўнг ва чап томонларига қараб салом берамиз.Агар намоз уч ёки тўрт ракъатли бўлса, икки ракъатнинг ташаҳҳудини ўқиб бўлиб, кейин учинчи ракъатга турамиз ва худди иккинчи ракъатга ўхшатиб, намозни давом эттирамиз. Лекин учинчи ва тўртинчи ракъатларда фақат Фотиҳанинг ўзини ўқиймиз, зам сура ўқимаймиз. Тўртинчи ракъатнинг иккинчи саждасидан кейин ўтириб, ташаҳҳуд, салавот ва дуоларни ўқиб, икки томонга салом берамиз."),
        ],
      ),
    );
  }
}
