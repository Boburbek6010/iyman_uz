import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_compass/utils/src/compass_ui.dart';

import '../../view_model/compass_vm.dart';

class CompassPage extends StatelessWidget {
  static const id = "/compass_page";

  const CompassPage({Key? key}) : super(key: key);

  void popUp(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Column(
              children: const [
                Center(child: Text('Qurilmangizni')),
                Image(
                  image: AssetImage("assets/images/compass/img.png"),
                  height: 40,
                  width: 70,
                  fit: BoxFit.cover,
                ),
                Text("shaklida aylantiring"),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: Lottie.asset('assets/lotties/compass.json'),
                )
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){
        popUp(context);
      },
      child: Scaffold(
        backgroundColor: const Color(0xff909d7f),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green.shade900,
          title: const Text("Compass"),
        ),
        body: Column(
          children: [
            const SizedBox(height: 50),
            const Expanded(
              flex: 2,
              child: Text(
                "Qibla",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 50),
            const Expanded(
              flex: 1,
              child: Image(
                image: AssetImage("assets/images/compass/img_7.png"),
              ),
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: SmoothCompass(
                  rotationSpeed: 500,
                  height: 300,
                  width: 300,
                  compassAsset: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/compass/img_6.png"),
                          fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}


