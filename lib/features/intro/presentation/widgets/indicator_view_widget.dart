import 'package:flutter/material.dart';

import '../../../../core/colors/app_color.dart';


class IndicatorView extends StatelessWidget {
  final bool isActive;
  final bool isNext;

  final void Function()? onButtonTap;

  const IndicatorView(
      {Key? key,
      required this.isActive,
      required this.isNext,
      this.onButtonTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      key: key,
      height: 6,
      width: isActive ? 15 : 5,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: AppColors.indicatorColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
