import 'package:flutter/material.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/models/character_model.dart';
import 'package:nav_app_ecomputer/theme/app_colors.dart';

class TopDetailsCharacterWidget extends StatelessWidget {
  final CharacterModel? character;
  const TopDetailsCharacterWidget({Key? key, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Container(
        //   height: 200,
        //   width: 200,
        //   color: AppColors.COLOR_BLUE,
        // ),
        // Container(
        //   height: 150,
        //   width: 150,
        //   color: AppColors.COLOR_GREEN,
        // ),
        // Container(
        //   height: 100,
        //   width: 100,
        //   color: AppColors.COLOR_GREY,
        // ),
        Container(
          width: double.infinity,
          height: 380,
          color: AppColors.COLOR_BLACK_GREY,
        ),
        Opacity(
          opacity: 0.6,
          child: (character?.image != null)
              ? Image.network(
                  character!.image!,
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 380,
                )
              : Image.asset(
                  "assets/images/module_rick_morty.png",
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 380,
                ),
        )
      ],
    );
  }
}
