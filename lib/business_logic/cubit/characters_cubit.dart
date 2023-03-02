import 'package:bloc/bloc.dart';
import 'package:breaking_bad/data/models/character_model.dart';
import 'package:breaking_bad/data/web_services/get_all_character.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final AllCharacter allcr;

  List<CharacterModel> characterList = [];

  CharactersCubit(this.allcr) : super(CharactersInitial());

  List<CharacterModel> getAllCharacters() {
    allcr.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      characterList = characters;
    });
    return characterList;
  }
}
