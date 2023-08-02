part of 'characters_cubit.dart';

class CharactersState {
  final int page;
  final List<CharacterModel> characters;
  CharacterModel? character;

  CharactersState({
    required this.page,
    required this.characters,
    this.character,
  });

  factory CharactersState.initial() {
    return CharactersState(
      page: 1,
      characters: [],
      character: null,
    );
  }

  CharactersState copyWith({
    int? page,
    List<CharacterModel>? characters,
    CharacterModel? character,
  }) {
    return CharactersState(
      page: page ?? this.page,
      characters: characters ?? this.characters,
      character: character ?? this.character,
    );
  }
}
