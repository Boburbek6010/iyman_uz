import 'package:flutter/material.dart';
import 'package:iyman_uz/features/taxorat/presentation/widgets/category_widgets.dart';

import '../../../../core/colors/app_color.dart';
import 'erkaklar taxorat olishi/erkaklar_taxorat_olishi.dart';


class TaxoratScreen extends StatelessWidget {
  static const id = "/taxorat_screen";
  const TaxoratScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Poklanish"),
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
        backgroundColor: const Color(0xff909d7f),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children:  [
          const SizedBox(height: 10),
          TaxoratCategoryView(text: "Taxorat Farzlari", onPressed: (() {}),),
          TaxoratCategoryView(text: "Taxorat Vojiblari", onPressed: (() {}),),
          TaxoratCategoryView(text: "Taxorat Sunnatlari",onPressed: (() {}),),
          TaxoratCategoryView(
              text: "Erkaklar Taxorat olish tartibi",
            onPressed: (() { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ErkaklarTaxoratOlishTartibi()));
            }),
          ),
          TaxoratCategoryView(text: "Ayollar Taxorat olish tartibi", onPressed: (() {}),),
          TaxoratCategoryView(text: "Taxoratni buzadigan amallar", onPressed: (() {}),),
          TaxoratCategoryView(text: "Tayammum qilish tartibi", onPressed: (() {}),),
        ],
      ),
    );
  }
}
