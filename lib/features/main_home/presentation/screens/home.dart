import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:iyman_uz/data/domain/namoz_repository.dart';
import 'package:iyman_uz/features/compass/presentation/pages/compass_page.dart';
import 'package:iyman_uz/features/main_home/presentation/widgets/every_item_widget.dart';
import 'package:iyman_uz/features/main_home/view_model/home_vm.dart';
import 'package:iyman_uz/make_less.dart';
import 'package:provider/provider.dart';

import '../../../namoz/presentation/screens/namoz_screen.dart';
import '../../../tasbeh/presentation/screen/tasbeh_screen.dart';
import '../../../taxorat/presentation/screens/taxorat_screen.dart';
import '../widgets/ramazon_counter_widget.dart';

class HomeScreen extends StatelessWidget {
  static const id = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeVM>(
      create: (context) => HomeVM(),
      builder: (context, widget) {
        var homeVm = Provider.of<HomeVM>(context, listen: false);
        return Consumer<HomeVM>(builder: (context, cart, child) {
          return StatefulWrapper(
            onInit: () {
              homeVm.onInit();
            },
            child: Scaffold(
              backgroundColor: const Color(0xff909d7f),
              drawer: const Drawer(),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.green.shade900,
                centerTitle: true,
                title: const Text("Taqvo.uz"),
              ),
              body: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: (homeVm.isLoading && homeVm.namozRepository.isDataVisible)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                /// for dates
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                            color: Colors.green.shade900,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          homeVm.namozRepository.response
                                                  ?.region ??
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
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                            color: Colors.green.shade900,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          homeVm.namozRepository.response
                                                  ?.date ??
                                              homeVm.currentDay,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.green.shade900,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                ///for clock
                                Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color:
                                        Colors.green.shade800.withOpacity(0.5),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        homeVm.namozTimes(),
                                        style: const TextStyle(
                                          fontSize: 30,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        homeVm.namozTimesReal(),
                                        style: const TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),

                                ///for picture
                                Image.network(
                                  homeVm.imgRef,
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  height:
                                      MediaQuery.of(context).size.height * 0.16,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            )
                          : Center(
                              child: CircularProgressIndicator(
                                color: Colors.green.shade900,
                              ),
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
                              image:
                                  Image.asset('assets/images/home/img_3.png'),
                              text: "IYMON",
                              onPressed: () {},
                            ),
                            EveryItemWidget(
                              onPressed: () {
                                Navigator.pushNamed(context, NamozScreen.id);
                              },
                              image:
                                  Image.asset('assets/images/home/img_4.png'),
                              text: "NAMOZ",
                            ),
                            EveryItemWidget(
                              onPressed: () {},
                              image:
                                  Image.asset('assets/images/home/img_5.png'),
                              text: "RO'ZA",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EveryItemWidget(
                              onPressed: () {},
                              image:
                                  Image.asset('assets/images/home/img_6.png'),
                              text: "ZAKOT",
                            ),
                            EveryItemWidget(
                              onPressed: () {},
                              image:
                                  Image.asset('assets/images/home/img_3.png'),
                              text: "HAJ",
                            ),
                            EveryItemWidget(
                              onPressed: () {
                                Navigator.pushNamed(context, CompassPage.id);
                              },
                              image:
                                  Image.asset('assets/images/home/img_3.png'),
                              text: "QIBLA",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EveryItemWidget(
                              onPressed: () {},
                              image:
                                  Image.asset('assets/images/home/img_3.png'),
                              text: "QUR'ON",
                            ),
                            EveryItemWidget(
                              onPressed: () {
                                Navigator.pushNamed(context, TasbehScreen.id);
                              },
                              image:
                                  Image.asset('assets/images/home/img_3.png'),
                              text: "ZIKRLAR",
                            ),
                            EveryItemWidget(
                              onPressed: () {
                                Navigator.pushNamed(context, TaxoratScreen.id);
                              },
                              image:
                                  Image.asset('assets/images/home/img_3.png'),
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
        });
      },
    );
  }
}
