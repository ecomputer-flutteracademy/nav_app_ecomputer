import 'dart:convert';

import 'package:nav_app_ecomputer/modules/home_rick_morty/data/models/character_model.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/services/character_api_services.dart';
import 'package:http/http.dart' as http;

class CharacterRepository {
  CharacterApiServices characterApiServices = CharacterApiServices();
  Future<List<CharacterModel>> getCharactersPerPage(int page) async {
    List<CharacterModel> charactersModel = [];

    http.Response? response =
        await characterApiServices.getCharactersPerPage(page);

    final responseBody = jsonDecode(response!.body);
    print(responseBody['results']);

    final List<dynamic> responseResults = responseBody['results'];

    charactersModel = responseBody['results']
        .map<CharacterModel>((e) => CharacterModel.fromJson(e))
        .toList();
    charactersModel = responseResults
        .map<CharacterModel>((e) => CharacterModel.fromJson(e))
        .toList();

    return charactersModel;
  }
}
