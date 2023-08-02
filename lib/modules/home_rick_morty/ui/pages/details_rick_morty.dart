import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/models/character_model.dart';

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
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Text(characterOject.character?.id.toString() ?? ''),
          Text(characterOject.character?.name ?? ''),
          Text(characterOject.character?.status ?? ''),
          Text(characterOject.character?.image ?? ''),
          Text(characterOject.character?.species ?? ''),
        ],
      ),
    );
  }
}
