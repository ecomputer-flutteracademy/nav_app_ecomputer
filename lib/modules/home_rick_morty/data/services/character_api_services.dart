import 'dart:convert';

import 'package:nav_app_ecomputer/core/apis/rick_morty_api.dart';
import 'package:nav_app_ecomputer/modules/home_rick_morty/data/models/character_model.dart';
import 'package:http/http.dart' as http;

class CharacterApiServices {
  Future<List<CharacterModel>> getCharacterPerPage(int page) async {
    List<CharacterModel> charactersModel = [];
    try {
      var httpsUri = Uri(
        scheme: 'https',
        host: APIRickMorty.baseUrl,
        path: '/api/character/',
        queryParameters: {
          'page': page.toString(),
        },
      );

      await http.get(httpsUri).then((response) {
        final responseBody = jsonDecode(response.body);
        print(responseBody['results']);

        final List<dynamic> responseResults = responseBody['results'];

        // charactersModel = responseBody['results']
        //     .map<CharacterModel>((e) => CharacterModel.fromJson(e))
        //     .toList();
        charactersModel = responseResults
            .map<CharacterModel>((e) => CharacterModel.fromJson(e))
            .toList();
      });

      return charactersModel;
    } catch (e) {
      return charactersModel;
    }
  }
}
