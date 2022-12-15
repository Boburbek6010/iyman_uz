import 'package:flutter/material.dart';
import 'package:iyman_uz/features/tasbeh/presentation/widgets/container_gradient_widget.dart';

class TasbehScreen extends StatelessWidget {
  static const id = "/tasbeh_screen";

  const TasbehScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF434343),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Kalimalar va Duolar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const ContainerGradientWidget(),
    );
  }
}
