import 'package:flutter/material.dart';
import 'package:nav_app_ecomputer/theme/app_colors.dart';
import 'package:nav_app_ecomputer/theme/app_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        backgroundColor: AppColors.COLOR_BLUE,
        padding: const EdgeInsets.symmetric(vertical: 8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        textStyle: TEXT_THEME_WHITE.titleMedium!
            .copyWith(color: AppColors.COLOR_WHITE),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(45, 10, 45, 10),
        child: Text(
          text,
          style: TEXT_THEME_WHITE.titleMedium!
              .copyWith(color: AppColors.COLOR_WHITE),
        ),
      ),
    );
  }
}
