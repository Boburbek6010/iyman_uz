import 'package:flutter/material.dart';

class RamazonCounterWidget extends StatelessWidget {
  const RamazonCounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green.shade800.withOpacity(0.6),
      ),
      child: const Center(child: Text("Qirbon Hayitiga 27 kun qoldi", style: TextStyle(
        fontSize: 18,
      ),)),
    );
  }
}
