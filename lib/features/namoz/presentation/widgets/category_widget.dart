import 'package:flutter/material.dart';

import '../../../../core/colors/theme_style.dart';

class NamozCategoryView extends StatelessWidget {
  final String text;
  final Function onPressed;
  const NamozCategoryView({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
     margin: const EdgeInsets.all(15),
     width: double.infinity,
     height: 70,
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.green.shade800,
    ),
    child: MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      padding: EdgeInsets.zero,
      onPressed: () => onPressed(),
      child: Text(
          text,
        style: ThemeService.categoryTextStyle,
      ),
    )
    );
  }
}
