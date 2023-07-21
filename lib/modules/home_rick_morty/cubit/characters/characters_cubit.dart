import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/models/character_model.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/repositories/character_respository.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/services/character_api_services.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit() : super(CharactersState.initial());

  // CharacterApiServices characterApiServices = CharacterApiServices();
  CharacterRepository characterRepository = CharacterRepository();

  Future<void> init() async {
    List<CharacterModel> myInitialCharacters = [];
    myInitialCharacters =
        await characterRepository.getCharactersPerPage(state.page);

    final newState = state.copyWith(characters: myInitialCharacters);

    emit(newState);
  }
}
