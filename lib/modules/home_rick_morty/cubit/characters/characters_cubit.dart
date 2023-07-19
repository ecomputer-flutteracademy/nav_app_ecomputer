import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/models/character_model.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/services/character_api_services.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit() : super(CharactersState.initial());

  CharacterApiServices characterApiServices = CharacterApiServices();

  Future<void> init() async {
    List<CharacterModel> myInitialCharacters = [];
    myInitialCharacters =
        await characterApiServices.getCharacterPerPage(state.page);

    final newState = state.copyWith(characters: myInitialCharacters);

    emit(newState);
  }
}
