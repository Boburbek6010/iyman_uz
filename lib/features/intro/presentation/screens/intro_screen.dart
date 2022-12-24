import 'package:flutter/material.dart';
import 'package:iyman_uz/features/intro/presentation/widgets/indicator_view_widget.dart';
import 'package:iyman_uz/features/intro/presentation/widgets/intro_view_widget.dart';
import 'package:iyman_uz/features/intro/view_model/intro_provider_vm.dart';
import 'package:provider/provider.dart';

import '../../../../core/colors/app_color.dart';

class IntroPage extends StatelessWidget {
  static const String id = 'intro_page';

  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff909d7f),
      body: ChangeNotifierProvider(
        create: (context) => IntroProvider(),
        builder: (context, widget) {
          var introProvider = Provider.of<IntroProvider>(context, listen: false);
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                onPageChanged: introProvider.onPageChanged,
                controller: introProvider.pageController,
                children: const [
                  // text & image
                  IntroView(
                    title: 'Faith',
                    subtitle:
                        "Confessing with the\n tongue and affirming\n with the heart",
                    image: "assets/images/intro/iyman_img.png",
                    key: PageStorageKey(0),
                  ),
                  IntroView(
                      title: "Prayer",
                      subtitle: "Obligatory for\n every Muslim",
                      image: "assets/images/intro/namaz_img.jpeg",
                      key: PageStorageKey(1)),
                  IntroView(
                      title: "Fasting",
                      subtitle: "Fasting during the\n month of Ramadan\n is obligatory for\n Muslim adults",
                      image: "assets/images/intro/ramadan_img.jpeg",
                      key: PageStorageKey(2)),
                  IntroView(
                      title: "Zakat",
                      subtitle: "charity given from\n wealth and income",
                      image: "assets/images/intro/zakat_img.jpeg",
                      key: PageStorageKey(3)),
                  IntroView(
                      title: "Hajj",
                      subtitle: "Hajj is obligatory for\n every Muslim once\n in his life",
                      image: "assets/images/intro/hajj_img.png",
                      key: PageStorageKey(4)),
                ],
              ),
              Consumer<IntroProvider>(
                builder: (context, intro, child) {
                  return Container(
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height / 21.1,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // indicator
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // indicator
                            IndicatorView(
                              isActive: introProvider.currentPage == 0 ? true : false,
                              isNext: introProvider.currentPage != 2 ? true : false,
                            ),
                            IndicatorView(
                              isActive: introProvider.currentPage == 1 ? true : false,
                              isNext: introProvider.currentPage != 2 ? true : false,
                            ),
                            IndicatorView(
                              isActive: introProvider.currentPage == 2 ? true : false,
                              isNext: introProvider.currentPage != 2 ? true : false,
                            ),
                            IndicatorView(
                              isActive: introProvider.currentPage == 3 ? true : false,
                              isNext: introProvider.currentPage != 2 ? true : false,
                            ),
                            IndicatorView(
                              isActive: introProvider.currentPage == 4 ? true : false,
                              isNext: introProvider.currentPage != 2 ? true : false,
                            ),
                          ],
                        ),

                        // button
                        GestureDetector(
                          onTap: () => introProvider.onButtonTap(
                            introProvider.currentPage,
                            context,
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.appTextColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: introProvider.currentPage != 4
                                  ? const Text(
                                      "Next",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    )
                                  : const Text(
                                      "Get Started",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
