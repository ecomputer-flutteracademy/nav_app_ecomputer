// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:nav_app_ecomputer/theme/app_colors.dart';
import 'package:nav_app_ecomputer/theme/app_fonts.dart';

class CardInformaitonCharacter extends StatelessWidget {
  final String title;
  final String description;
  const CardInformaitonCharacter({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.COLOR_GREY),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            const Icon(
              Icons.info,
              size: 16,
              color: AppColors.COLOR_GREY,
            ),
            const SizedBox(width: 5),
            RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: title,
                style: TEXT_THEME_WHITE.bodyMedium!
                    .copyWith(color: AppColors.COLOR_BLACK),
              ),
            )
          ],
        ),
        RichText(
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            text: description,
            style: TEXT_THEME_WHITE.titleMedium!
                .copyWith(color: AppColors.COLOR_BLACK),
          ),
        )
      ]),
    );
  }
}
