part of 'characters_cubit.dart';

class CharactersState {
  final int page;
  final List<CharacterModel> characters;

  CharactersState({
    required this.page,
    required this.characters,
  });

  factory CharactersState.initial() {
    return CharactersState(
      page: 1,
      characters: [],
    );
  }

  CharactersState copyWith({
    int? page,
    List<CharacterModel>? characters,
  }) {
    return CharactersState(
      page: page ?? this.page,
      characters: characters ?? this.characters,
    );
  }
}
