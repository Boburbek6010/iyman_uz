import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iyman_uz/data/domain/namoz_repository.dart';
import 'package:iyman_uz/features/compass/presentation/pages/compass_page.dart';
import 'package:iyman_uz/features/main_home/presentation/widgets/every_item_widget.dart';
import 'package:iyman_uz/make_less.dart';

import '../../../namoz/presentation/screens/namoz_screen.dart';
import '../../../tasbeh/presentation/screen/tasbeh_screen.dart';
import '../../../taxorat/presentation/screens/taxorat_screen.dart';
import '../widgets/ramazon_counter_widget.dart';

class HomeScreen extends StatefulWidget {
  static const id = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    NamozRepository namozRepository = NamozRepository.instance;
    String? currentTime;
    String currentDay = "Today";
    DateTime now = DateTime.now();
    late String timeOfPrayer;
    return StatefulWrapper(
      onInit: () {
        namozRepository.getAllTimes().then((value) {
          setState(() {});
        });
        currentTime = DateFormat('kk:mm').format(now);
        currentDay = DateFormat(' EEE d MMM').format(now);
      },
      child: Scaffold(
        backgroundColor: const Color(0xff909d7f),
        drawer: const Drawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green.shade900,
          centerTitle: true,
          title: const Text("TAQVO.uz"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// for dates
                  namozRepository.isDataVisible
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade900,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  namozRepository.response?.region ??
                                      'Tashkent',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade900,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  namozRepository.response?.date ?? currentDay,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: CircularProgressIndicator(
                            color: Colors.green.shade900,
                          )),

                  ///for clock
                  namozRepository.isDataVisible
                      ? Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.green.shade800.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                currentTime ==
                                        namozRepository
                                            .response?.times?.tongSaharlik
                                    ? "Bamdod"
                                    : currentTime ==
                                            namozRepository
                                                .response?.times?.tongSaharlik
                                        ? "Peshin"
                                        : currentTime ==
                                                namozRepository.response?.times
                                                    ?.tongSaharlik
                                            ? "Asr"
                                            : currentTime ==
                                                    namozRepository.response
                                                        ?.times?.tongSaharlik
                                                ? "Shom"
                                                : currentTime ==
                                                        namozRepository
                                                            .response
                                                            ?.times
                                                            ?.tongSaharlik
                                                    ? "Xufton"
                                                    : "Bamdod",
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                currentTime ==
                                        namozRepository
                                            .response?.times?.tongSaharlik
                                    ? namozRepository
                                            .response?.times?.tongSaharlik ??
                                        ""
                                    : currentTime ==
                                            namozRepository
                                                .response?.times?.peshin
                                        ? namozRepository
                                                .response?.times?.peshin ??
                                            ""
                                        : currentTime ==
                                                namozRepository
                                                    .response?.times?.asr
                                            ? namozRepository
                                                    .response?.times?.asr ??
                                                ""
                                            : currentTime ==
                                                    namozRepository.response
                                                        ?.times?.shomIftor
                                                ? namozRepository.response
                                                        ?.times?.shomIftor ??
                                                    ""
                                                : currentTime ==
                                                        namozRepository.response
                                                            ?.times?.hufton
                                                    ? namozRepository.response
                                                            ?.times?.hufton ??
                                                        ""
                                                    : namozRepository
                                                            .response
                                                            ?.times
                                                            ?.tongSaharlik ??
                                                        "",
                                style: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )
                      : SizedBox.shrink(),

                  ///for picture
                  Image(
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.height * 0.16,
                    image: const AssetImage('assets/images/home/img_1.png'),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.green.shade800,
              thickness: 3,
            ),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EveryItemWidget(
                        image: Image.asset('assets/images/home/img_3.png'),
                        text: "IYMON",
                        onPressed: () {},
                      ),
                      EveryItemWidget(
                        onPressed: () {
                          Navigator.pushNamed(context, NamozScreen.id);
                        },
                        image: Image.asset('assets/images/home/img_4.png'),
                        text: "NAMOZ",
                      ),
                      EveryItemWidget(
                        onPressed: () {},
                        image: Image.asset('assets/images/home/img_5.png'),
                        text: "RO'ZA",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EveryItemWidget(
                        onPressed: () {},
                        image: Image.asset('assets/images/home/img_6.png'),
                        text: "ZAKOT",
                      ),
                      EveryItemWidget(
                        onPressed: () {},
                        image: Image.asset('assets/images/home/img_3.png'),
                        text: "HAJ",
                      ),
                      EveryItemWidget(
                        onPressed: () {
                          Navigator.pushNamed(context, CompassPage.id);
                        },
                        image: Image.asset('assets/images/home/img_3.png'),
                        text: "QIBLA",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EveryItemWidget(
                        onPressed: () {},
                        image: Image.asset('assets/images/home/img_3.png'),
                        text: "QUR'ON",
                      ),
                      EveryItemWidget(
                        onPressed: () {
                          Navigator.pushNamed(context, TasbehScreen.id);
                        },
                        image: Image.asset('assets/images/home/img_3.png'),
                        text: "ZIKRLAR",
                      ),
                      EveryItemWidget(
                        onPressed: () {
                          Navigator.pushNamed(context, TaxoratScreen.id);
                        },
                        image: Image.asset('assets/images/home/img_3.png'),
                        text: "POKLANISH",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const RamazonCounterWidget(),
          ],
        ),
      ),
    );
  }
}
