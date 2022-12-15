import 'package:flutter/material.dart';

class ZikrlarWidget extends StatelessWidget {
  const ZikrlarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: const Color(0xFF434343),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFBEBEBE),
                offset: Offset(2, 2),
                blurRadius: 10,
                spreadRadius: 2,
              ),
              BoxShadow(
                color: Colors.black,
                offset: Offset(-2, -2),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: const Center(
            child: Text(
              "Zikrlar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
