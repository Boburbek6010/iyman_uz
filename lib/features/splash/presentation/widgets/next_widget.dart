import 'package:flutter/material.dart';
import 'package:iyman_uz/core/colors/app_color.dart';

class NextWidget extends StatelessWidget {
  const NextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      margin: const EdgeInsets.only(right: 25, bottom: 30),
      child: MaterialButton(
        onPressed: (){
          //intro page
        },
        shape: const StadiumBorder(),
        color: AppColors.appTextColor,
        child: const Center(
          child: Icon(Icons.navigate_next, color: AppColors.backgroundColor),
        ),
      ),
    );
  }
}
