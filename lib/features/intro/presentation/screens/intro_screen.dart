import 'package:easy_localization/easy_localization.dart';
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
                children:  [
                  // text & image
                  IntroView(
                    title: 'iymon'.tr(),
                    subtitle:
                        "introIyman".tr(),
                    image: "assets/images/intro/iyman_img.png",
                    key: const PageStorageKey(0),
                  ),
                  IntroView(
                      title: "namaz".tr(),
                      subtitle: "introNamaz".tr(),
                      image: "assets/images/intro/namaz_img.jpeg",
                      key: const PageStorageKey(1)),
                  IntroView(
                      title: "roza".tr(),
                      subtitle: "introRoza".tr(),
                      image: "assets/images/intro/ramadan_img.jpeg",
                      key: const PageStorageKey(2)),
                  IntroView(
                      title: "zakat".tr(),
                      subtitle: "introZakat".tr(),
                      image: "assets/images/intro/zakat_img.jpeg",
                      key: const PageStorageKey(3)),
                  IntroView(
                      title: "haj".tr(),
                      subtitle: "introHaj".tr(),
                      image: "assets/images/intro/hajj_img.png",
                      key: const PageStorageKey(4)),
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
                                  ?   Text(
                                      "button".tr(),
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    )
                                  :  Text(
                                      "buttonOne".tr(),
                                      style: const TextStyle(
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
