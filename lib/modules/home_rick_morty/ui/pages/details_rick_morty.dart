import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/models/character_model.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/ui/widgets/top_details_character_widget.dart';
import 'package:nav_app_ecomputer/theme/app_colors.dart';
import 'package:nav_app_ecomputer/theme/app_fonts.dart';

class CharacterRickMortyObject {
  final CharacterModel? character;
  // final int? page;

  CharacterRickMortyObject({
    this.character,
    // this.page,
  });
}

class DetailsRickMorty extends StatelessWidget {
  final CharacterRickMortyObject characterOject;
  const DetailsRickMorty({
    Key? key,
    required this.characterOject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.COLOR_BLACK_GREY,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.COLOR_WHITE,
          ),
        ),
      ),
      body: Column(
        children: [
          TopDetailsCharacterWidget(
            character: characterOject.character,
          ),
          Text(
            characterOject.character?.id.toString() ?? '',
            style: TEXT_THEME_WHITE.bodyLarge,
          ),
          Text(
            characterOject.character?.name ?? '',
            style: TEXT_THEME_WHITE.bodyLarge!
                .copyWith(color: AppColors.COLOR_BLACK),
          ),
          Text(
            characterOject.character?.status ?? '',
            style: TEXT_THEME_WHITE.bodyLarge!
                .copyWith(color: AppColors.COLOR_BLACK),
          ),
          Text(
            characterOject.character?.image ?? '',
            style: TEXT_THEME_WHITE.bodyLarge!
                .copyWith(color: AppColors.COLOR_BLACK),
          ),
          Text(
            characterOject.character?.species ?? '',
            style: TEXT_THEME_WHITE.bodyLarge!
                .copyWith(color: AppColors.COLOR_BLACK),
          ),
        ],
      ),
    );
  }
}
