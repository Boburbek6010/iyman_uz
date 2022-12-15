import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iyman_uz/features/splash/view_model/splash_vm.dart';
import 'package:provider/provider.dart';

import '../../../../core/colors/app_color.dart';

class LanguageChooseWidget extends StatelessWidget {
  const LanguageChooseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashVM(),
      builder: (context, widget) {
        var splashVm = Provider.of<SplashVM>(context);
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Bobbers',
                    color: AppColors.appTextColor,
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText('salam'.tr(),
                        textStyle: const TextStyle(color: AppColors.appTextColor),
                      ),
                      TyperAnimatedText("Iyman.uz",
                        textStyle: const TextStyle(color: AppColors.appTextColor),),
                      TyperAnimatedText("welcome".tr(),
                        textStyle: const TextStyle(color: AppColors.appTextColor),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // # RU
                  MaterialButton(
                    shape: const StadiumBorder(),
                    color: splashVm.isLanguageChosen == 'ru' ? AppColors.introPageButtonColor :AppColors.appTextColor,
                    onPressed: () {
                      splashVm.ru();
                      context.setLocale(
                        const Locale("ru", "RU"),
                      );
                    },
                    child: const Text("RU"),
                  ),

                  // # ENG
                  MaterialButton(
                    shape: const StadiumBorder(),
                    color: splashVm.isLanguageChosen == "en" ? AppColors.introPageButtonColor :AppColors.appTextColor,
                    onPressed: ()  {
                      splashVm.en();
                      context.setLocale(
                        const Locale("en", "US"),
                      );
                    },
                    child: const Text("ENG"),
                  ),

                  // # UZ
                  MaterialButton(
                    shape: const StadiumBorder(),
                    color: splashVm.isLanguageChosen == "uz" ? AppColors.introPageButtonColor :AppColors.appTextColor,
                    onPressed: () {
                      splashVm.uz();
                      context.setLocale(
                        const Locale("uz", "UZ"),
                      );
                    },
                    child: const Text("UZ"),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        );
      }
    );
  }
}
