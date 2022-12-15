import 'package:flutter/material.dart';

import '../../../../core/colors/app_color.dart';
import '../widgets/taxorats_widgets.dart';

class TaxoratScreen extends StatelessWidget {
  static const id = "/taxorat_screen";
  const TaxoratScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Taxorat"),
        centerTitle: true,
        backgroundColor: AppColors.namozScreenAppBarColor,
        leading: IconButton(
          splashRadius: 25,
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back,size: 30,color: AppColors.iconColor,),
        ),
      ),
      backgroundColor: AppColors.backgroundColorIntroPage,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          SizedBox(height: 20),
          TaxoratsWidgets(text: "1.Ният қилиш", image: "assets/images/taxorat/tahorat_niyati.gif", content: "Таҳорат олиш учун, иложи бўлса, қиблага юзланилади.«Бисмиллаҳир роҳманир роҳийм» деб, ният қилинади.",),
          SizedBox(height: 20),
          TaxoratsWidgets(text: "2.Қўлларни ювиш", image: "assets/images/taxorat/qo'llarni_yuvish.gif", content: "Қўллар бандигача уч марта ювилади. Бармоғида узуги бор киши уни қимирлатиб, остига сув етказади. Бармоқларни бир-бирининг орасига киргизилади.",),
          SizedBox(height: 20),
          TaxoratsWidgets(text: "3.Оғиз чайиш", image: "assets/images/taxorat/og'iz_chayish.gif", content: "Тишлар мисвок ёки тиш ювиш пастаси билан, ёки қўл билан ишқалаб ювилади.Ўнг қўлга сув олиб, оғиз уч марта ғарғара қилиб чайилади.",),
          SizedBox(height: 20),
          TaxoratsWidgets(text: "4.Бурунни чайиш", image: "assets/images/taxorat/burunni_chayish.gif", content: "Ўнг қўлга сув олиб, бурунга уч марта тортиб, чап қўл билан қоқиб тозаланади.",),
          SizedBox(height: 20),
          TaxoratsWidgets(text: "5.Юзни ювиш", image: "assets/images/taxorat/yuzni_yuvish.gif", content: "Юз ювилади – уч марта. Юзнинг чегараси узунасига соч чиққан жойдан жағнинг остигача, кенглиги эса икки қулоқ юмшоғининг орасигача бўлган ўриндир.",),
          SizedBox(height: 20),
          TaxoratsWidgets(text: "6.Қўлларни тирсаккача ювиш", image: "assets/images/taxorat/qo'lni_tirsak_bn_yuvish.gif", content: "Аввал ўнг қўл, сўнг чап қўл тирсак билан қўшиб уч марта ювилади.",),
          SizedBox(height: 20),
          TaxoratsWidgets(text: "7.Масҳ тортиш", image: "assets/images/taxorat/masx_tortish.gif", content: "Ҳовучга сув олиб тўкиб ташлаб, қўли билан бошнинг ҳамма қисмига бир марта масҳ тортилади.Кўрсаткич бармоқ билан қулоқ ичига масҳ тортиб, бош бармоқ билан эса қулоқ ташқарисига масҳ тортилади.",),
          SizedBox(height: 20),
          TaxoratsWidgets(text: "8.Оёқларни ювиш", image: "assets/images/taxorat/oyoqlarni_yuvish.gif", content: "Чап қўл билан ўнг оёқни ошиқ (тўпиқ) билан қўшиб ва бармоқлар орасини (ишқалаб) уч марта ювилади.Чап оёқ ҳам шу тарзда уч марта ювилади.",),
          SizedBox(height: 20),
          TaxoratsWidgets(text: "9.Дуо", image: "assets/images/taxorat/duo.jpeg", content: "Таҳорат қилиб бўлгандан кейин шаҳодат калимасини ва ривоятда келган дуо ўқилади:Ашҳаду аллаа илааҳа иллаллоҳу ваҳдаҳу лаа шарийка лаҳу. Ва ашҳаду анна Муҳаммадан абдуҳу ва Расулуҳу.Маъноси: Гувоҳлик бераманки, Аллоҳдан бошқа илоҳ (ибодатга сазовор зот) йўқ. У ёлғиздир, Унинг шериги йўқ. Яна гувоҳлик бераманки, Муҳаммад (соллаллоҳу алайҳи васаллам) Унинг бандаси ва Расулидир.Дуо: Аллоҳуммажъалнии минат-таввабийна важъалнии минал мутатоҳҳирийн.Дуонинг маъноси: Аллоҳим, мени тавба қилувчилардан ва покланувчилардан қилгин».",),
        ],
      ),
    );
  }
}
