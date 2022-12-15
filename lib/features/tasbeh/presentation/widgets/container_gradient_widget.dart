import 'package:flutter/material.dart';
import 'package:iyman_uz/features/tasbeh/presentation/widgets/6_diniy_kalima_widget.dart';
import 'package:iyman_uz/features/tasbeh/presentation/widgets/bismillahir_rohmanir_rohiym_widget.dart';
import 'package:iyman_uz/features/tasbeh/presentation/widgets/oyatal_kursi_widget.dart';
import 'package:iyman_uz/features/tasbeh/presentation/widgets/tasbehlar_widget.dart';
import 'package:iyman_uz/features/tasbeh/presentation/widgets/zikrlar_widget.dart';

class ContainerGradientWidget extends StatelessWidget {
  const ContainerGradientWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xFF000000),
            Color(0xFF434343),
          ],
        ),
      ),
      child: Column(
        children: [
          const BismillahirRohmanirRohiym(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              OyatalKursiWidget(),
              OltiDiniyKalimaWidget(),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TasbehlarWidget(),
              ZikrlarWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
