import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_app_ecomputer/core/locator/locator.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/cubit/characters/characters_cubit.dart';

class HomeRickMorty extends StatelessWidget {
  const HomeRickMorty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      bloc: locator<CharactersCubit>()..init(),
      builder: (context, state) {
        return Scaffold(
          body: ListView.builder(
            itemCount: state.characters.length,
            itemBuilder: (context, index) {
              return Text(state.characters[index].name ?? '');
            },
          ),
        );
      },
    );
  }
}
