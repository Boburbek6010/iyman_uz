import 'package:flutter/material.dart';
import 'package:iyman_uz/core/colors/app_color.dart';
import 'package:iyman_uz/features/splash/presentation/widgets/language_choose_widget.dart';
import 'package:iyman_uz/features/splash/presentation/widgets/splash_logo_widget.dart';
import 'package:provider/provider.dart';

import '../../view_model/splash_vm.dart';
import '../widgets/next_widget.dart';

class SplashPage extends StatelessWidget {
  static const id = "/splash_page";

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SplashVM>(
      create: (context) => SplashVM(),
      builder: (context, widget) {
        var splashVm = Provider.of<SplashVM>(context, listen: false);
        return Scaffold(
          backgroundColor: const Color(0xff909d7f),
          body: Consumer<SplashVM>(
            builder: (context, cart, child){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  SplashLogo(),
                  LanguageChooseWidget(),
                ],
              );
            }
          ),
        );
      },
    );
  }
}
