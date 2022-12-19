import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozCategoryView extends StatelessWidget {
  final String text;
  const NamozCategoryView({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(18),
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(25),
           color: Colors.green.shade800.withOpacity(0.6),
         ),
         child: MaterialButton(
           onPressed: (() {}),
           child: Text(
               text,
             style: ThemeService.categoryTextStyle,
           ),
         )
         )
      ],
    );
  }
}
