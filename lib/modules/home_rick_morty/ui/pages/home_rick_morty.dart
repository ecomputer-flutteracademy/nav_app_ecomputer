import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_app_ecomputer/core/locator/locator.dart';
import 'package:nav_app_ecomputer/core/routes/app_router.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/cubit/characters/characters_cubit.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/ui/pages/details_rick_morty.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/ui/widgets/body_card_widget.dart';

class HomeRickMorty extends StatelessWidget {
  const HomeRickMorty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      bloc: locator<CharactersCubit>()..init(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: ListView.builder(
              itemCount: state.characters.length,
              itemBuilder: (context, index) {
                // return Text(state.characters[index].name ?? '');

                return GestureDetector(
                  onTap: () {
                    context.goNamed(
                      AppRoutes.detailsRickMorty.name,
                      extra: CharacterRickMortyObject(
                        character: state.characters[index],
                      ),
                    );

                    //FALLO => CONTEXT != LOCATOR

                    // context.read<CharactersCubit>().changeCharacter(
                    //       character: state.characters[index],
                    //     );

                    // locator<CharactersCubit>().changeCharacter(
                    //   character: state.characters[index],
                    // );
                  },
                  child: BodyCardWidget(
                    characterModel: state.characters[index],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
