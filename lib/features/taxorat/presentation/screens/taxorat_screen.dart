import 'package:flutter/material.dart';
import 'package:iyman_uz/features/namoz/presentation/widgets/category_widget.dart';
import 'package:iyman_uz/features/taxorat/presentation/widgets/category_widgets.dart';

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
          SizedBox(height: 10),
          TaxoratCategoryView(text: "Taxorat Farzlari"),
          TaxoratCategoryView(text: "Taxorat Vojiblari"),
          TaxoratCategoryView(text: "Taxorat Sunnatlari"),
          TaxoratCategoryView(text: "Erkaklar Taxorat olish tartibi"),
          TaxoratCategoryView(text: "Ayollar Taxorat olish tartibi"),
          TaxoratCategoryView(text: "Taxoratni buzadigan amallar"),
          TaxoratCategoryView(text: "Tayammum qilish tartibi"),
        ],
      ),
    );
  }
}
