import 'package:flutter/material.dart';
import 'package:iyman_uz/features/main_home/presentation/widgets/every_item_widget.dart';

import '../../../namoz/presentation/screens/namoz_screen.dart';
import '../../../tasbeh/presentation/screen/tasbeh_screen.dart';
import '../../../taxorat/presentation/screens/taxorat_screen.dart';
import '../widgets/ramazon_counter_widget.dart';

class HomeScreen extends StatelessWidget {
  static const id = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// for dates
                Column(
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
                          "15 Noyabr",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.green.shade900,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
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
                          "Tashkent",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.green.shade900,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
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
                          "-01:30",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.green.shade900,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
                ///for clock
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green.shade800.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Bamdod',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '05:43',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                ///for picture
                Image(
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.32,
                  height: MediaQuery.of(context).size.height * 0.18,
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
                      onPressed: (){},
                    ),
                    EveryItemWidget(
                      onPressed: (){
                        Navigator.pushNamed(context, NamozScreen.id);
                      },
                      image: Image.asset('assets/images/home/img_4.png'),
                      text: "NAMOZ",
                    ),
                    EveryItemWidget(
                      onPressed: (){},
                      image: Image.asset('assets/images/home/img_5.png'),
                      text: "RO'ZA",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EveryItemWidget(
                      onPressed: (){

                      },
                      image: Image.asset('assets/images/home/img_6.png'),
                      text: "ZAKOT",
                    ),
                    EveryItemWidget(
                      onPressed: (){},
                      image: Image.asset('assets/images/home/img_3.png'),
                      text: "HAJ",
                    ),
                    EveryItemWidget(
                      onPressed: (){},
                      image: Image.asset('assets/images/home/img_3.png'),
                      text: "QIBLA",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EveryItemWidget(
                      onPressed: (){},
                      image: Image.asset('assets/images/home/img_3.png'),
                      text: "QUR'ON",
                    ),
                    EveryItemWidget(
                      onPressed: (){
                        Navigator.pushNamed(context, TasbehScreen.id);
                      },
                      image: Image.asset('assets/images/home/img_3.png'),
                      text: "ZIKRLAR",
                    ),
                    EveryItemWidget(
                      onPressed: (){
                        Navigator.pushNamed(context, TaxoratScreen.id);
                      },
                      image: Image.asset('assets/images/home/img_3.png'),
                      text: "TAHORAT",
                    ),
                  ],
                ),
              ],
            ),
          ),
          const RamazonCounterWidget(),
        ],
      ),
    );
  }
}
