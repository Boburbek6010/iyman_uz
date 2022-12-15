import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/screens/home_screen.dart';
import 'features/intro/presentation/screens/intro_screen.dart';
import 'features/namoz/presentation/screens/namoz_screen.dart';
import 'features/splash/presentation/screens/splash_screen.dart';
import 'features/tasbeh/presentation/screen/tasbeh_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final RouteObserver<PageRoute> routeObserver =
  RouteObserver<PageRoute>();

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    localizationsDelegates: context.localizationDelegates,
    supportedLocales: context.supportedLocales,
    locale: context.locale,
    home: const SplashPage(),
    routes: {
      SplashPage.id: (context) => const SplashPage(),
      IntroPage.id: (context) => const IntroPage(),
      HomePage.id: (context) => const HomePage(),
      NamozScreen.id: (context) => const NamozScreen(),
      TasbehScreen.id: (context) => const TasbehScreen(),
      //keep coding....
    },
  );
}