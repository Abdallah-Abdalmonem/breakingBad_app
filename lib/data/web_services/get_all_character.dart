import 'package:breaking_bad/data/models/character_model.dart';
import 'package:breaking_bad/data/web_services/api.dart';

class AllCharacter {
  Future<List<CharacterModel>> getAllCharacters() async {
    List<dynamic> data =
        await Api().get(url: 'https://breakingbadapi.com/api/characters');

    List<CharacterModel> productsList = [];

    for (var i = 0; i < data.length; i++) {
      productsList.add(CharacterModel.fromJson(data[i]));
    }
    return productsList;
  }
}
