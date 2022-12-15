import 'package:flutter/material.dart';

import '../../../../core/colors/app_color.dart';
import '../widgets/namoz_jalsa_widget.dart';
import '../widgets/namoz_niyyat_qilish_widget.dart';
import '../widgets/namoz_qada_widget.dart';
import '../widgets/namoz_qiyom_three_widget.dart';
import '../widgets/namoz_qiyom_two_widget.dart';
import '../widgets/namoz_qiyom_widget.dart';
import '../widgets/namoz_rakat_widget.dart';
import '../widgets/namoz_ruku_widget.dart';
import '../widgets/namoz_sajda_three_widget.dart';
import '../widgets/namoz_sajda_two_widget.dart';
import '../widgets/namoz_sajda_widget.dart';
import '../widgets/namoz_salom_widget.dart';
import '../widgets/namoz_takbiri_taxrima_widget.dart';

class NamozScreen extends StatelessWidget {
  static const id = "/namoz_screen";
  const NamozScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Namoz"),
          centerTitle: true,
          backgroundColor: AppColors.namozScreenAppBarColor,
          leading: IconButton(
            splashRadius: 25,
            onPressed: (){
              //Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: AppColors.iconColor,
            ),
          ),
        ),
        backgroundColor: AppColors.backgroundColorIntroPage,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children:  const [
            SizedBox(height: 20),
            NamozNiyyatQilish(),
            SizedBox(height: 20),
            NamozTakbiriTahrima(),
            SizedBox(height: 20),
            NamozQiyom(),
            SizedBox(height: 20),
            NamozRuku(),
            SizedBox(height: 20),
            NamozQiyomTwo(),
            SizedBox(height: 20),
            NamozSajda(),
            SizedBox(height: 20),
            NamozSajdaTwo(),
            SizedBox(height: 20),
            NamozJalsa(),
            SizedBox(height: 20),
            NamozSajdaThree(),
            SizedBox(height: 20),
            NamozQiyomThree(),
            SizedBox(height: 20),
            NamozRakat(),
            SizedBox(height: 20),
            NamozQada(),
            SizedBox(height: 20),
            NamozSalom(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}