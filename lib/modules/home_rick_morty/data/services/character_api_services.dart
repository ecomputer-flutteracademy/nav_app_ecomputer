import 'package:nav_app_ecomputer/core/apis/rick_morty_api.dart';
import 'package:http/http.dart' as http;

class CharacterApiServices {
  Future<http.Response?> getCharactersPerPage(int page) async {
    // List<CharacterModel> charactersModel = [];
    http.Response? myResponse;
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
        // final responseBody = jsonDecode(response.body);
        // print(responseBody['results']);

        // final List<dynamic> responseResults = responseBody['results'];

        // charactersModel = responseBody['results']
        //     .map<CharacterModel>((e) => CharacterModel.fromJson(e))
        //     .toList();
        // charactersModel = responseResults
        //     .map<CharacterModel>((e) => CharacterModel.fromJson(e))
        //     .toList();
        myResponse = response;
      });
      return myResponse;
      // return charactersModel;
    } catch (e) {
      // return charactersModel;
      return null;
    }
  }
}
