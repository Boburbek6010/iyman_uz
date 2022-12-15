import 'package:flutter/material.dart';
import 'package:iyman_uz/core/colors/app_color.dart';
import 'package:iyman_uz/features/splash/presentation/widgets/language_choose_widget.dart';
import 'package:iyman_uz/features/splash/presentation/widgets/splash_logo_widget.dart';

import '../widgets/next_widget.dart';

class SplashPage extends StatelessWidget {
  static const id = "/splash_page";

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          SplashLogo(),
          LanguageChooseWidget(),
          NextWidget(),
        ],
      ),
    );
  }
}
