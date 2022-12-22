import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iyman_uz/features/main_home/presentation/screens/home.dart';
import 'package:iyman_uz/features/taxorat/presentation/screens/taxorat_screen.dart';

import 'features/intro/presentation/screens/intro_screen.dart';
import 'features/namoz/presentation/screens/namoz_screen.dart';
import 'features/splash/presentation/screens/splash_screen.dart';
import 'features/tasbeh/presentation/screen/tasbeh_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  // keep coding...

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    localizationsDelegates: context.localizationDelegates,
    supportedLocales: context.supportedLocales,
    locale: context.locale,
    home: const HomeScreen(),
    routes: {
      SplashPage.id: (context) => const SplashPage(),
      TaxoratScreen.id: (context) => const TaxoratScreen(),
      IntroPage.id: (context) => const IntroPage(),
      NamozScreen.id: (context) => const NamozScreen(),
      TasbehScreen.id: (context) => const TasbehScreen(),
      HomeScreen.id: (context) => const HomeScreen(),
    },
  );
}