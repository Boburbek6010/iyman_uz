import 'package:flutter/material.dart';
import 'package:iyman_uz/features/namoz/presentation/widgets/category_widget.dart';

import '../../../../core/colors/app_color.dart';


class NamozScreen extends StatelessWidget {
  static const id = "/namoz_screen";
  const NamozScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Namoz"),
        centerTitle: true,
        backgroundColor: AppColors.namozScreenAppBarColor,
        leading: IconButton(
          splashRadius: 25,
          onPressed: (){
            Navigator.of(context).pop();
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
          SizedBox(height: 10),
          NamozCategoryView(text: "Erkaklar Namozi"),
          NamozCategoryView(text: "Ayollar Namozi"),
          NamozCategoryView(text: "Musofir Namozi"),
          NamozCategoryView(text: "Juma Namozi"),
          NamozCategoryView(text: "Xayit Namozi"),
          NamozCategoryView(text: "Tahajjud Namozi"),
          NamozCategoryView(text: "Bamdod Namozi"),
          NamozCategoryView(text: "Peshin Namozi"),
          NamozCategoryView(text: "Asr Namozi"),
          NamozCategoryView(text: "Shom Namozi"),
          NamozCategoryView(text: "Xufton Namozi"),
          NamozCategoryView(text: "Qazo Namozi"),
          NamozCategoryView(text: "Namoz Farzlari"),
          NamozCategoryView(text: "Namoz Sunnatlari"),
          NamozCategoryView(text: "Namoz Vojiblari"),
          NamozCategoryView(text: "Namoz Mustahablari"),
          NamozCategoryView(text: "Namoz Xaromlari"),
          NamozCategoryView(text: "Namoz Mufsidlari"),
          NamozCategoryView(text: "Namoz Makruhlari"),
          NamozCategoryView(text: "Namoz Mubohlari"),
        ],
      ),
    );
  }
}