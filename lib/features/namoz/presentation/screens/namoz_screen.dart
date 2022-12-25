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
      backgroundColor: const Color(0xff909d7f),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 10),
          NamozCategoryView(text: "Bamdod Namozi", onPressed: (){}),
          NamozCategoryView(text: "Peshin Namozi", onPressed: (){}),
          NamozCategoryView(text: "Asr Namozi", onPressed: (){}),
          NamozCategoryView(text: "Shom Namozi", onPressed: (){}),
          NamozCategoryView(text: "Xufton Namozi", onPressed: (){}),
          NamozCategoryView(text: "Erkaklar Namozi", onPressed: (){}),
          NamozCategoryView(text: "Ayollar Namozi", onPressed: (){}),
          NamozCategoryView(text: "Musofir Namozi", onPressed: (){}),
          NamozCategoryView(text: "Juma Namozi", onPressed: (){}),
          NamozCategoryView(text: "Xayit Namozi", onPressed: (){}),
          NamozCategoryView(text: "Tahajjud Namozi", onPressed: (){}),
          NamozCategoryView(text: "Qazo Namozi", onPressed: (){}),
          NamozCategoryView(text: "Namoz Farzlari", onPressed: (){}),
          NamozCategoryView(text: "Namoz Sunnatlari", onPressed: (){}),
          NamozCategoryView(text: "Namoz Vojiblari", onPressed: (){}),
          NamozCategoryView(text: "Namoz Mustahablari", onPressed: (){}),
          NamozCategoryView(text: "Namoz Xaromlari", onPressed: (){}),
          NamozCategoryView(text: "Namoz Mufsidlari", onPressed: (){}),
          NamozCategoryView(text: "Namoz Makruhlari", onPressed: (){}),
          NamozCategoryView(text: "Namoz Mubohlari", onPressed: (){}),
        ],
      ),
    );
  }
}