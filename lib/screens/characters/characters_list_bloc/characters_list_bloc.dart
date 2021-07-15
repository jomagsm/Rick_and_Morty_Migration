import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_null_safety/data/repository/repository.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/characters/character_model.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/characters/characters_model.dart';

part 'characters_list_state.dart';
part 'characters_list_event.dart';
part 'characters_list_bloc.freezed.dart';


class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final _repository = Repository();
  CharactersModel? characters;
  CharactersBloc() : super(CharactersState.initial());

  bool isGrid = false;

  /// Отслеживает события. Метод map позволяет нам сократить код и не дает потерять состояние.
  @override
  Stream<CharactersState> mapEventToState(
    CharactersEvent event,
  ) async* {
    yield* event.map(
      initial: _mapInitialCharactersEvent,

      /// Стрим для инициализации
      selectedView: _mapSelectedViewCharactersEvent,

      /// Стрим для выбора темы
      find: _mapFindCharactersEvent,
    );
  }

  Stream<CharactersState> _mapInitialCharactersEvent(
      _InitialCharactersEvent event) async* {
    /// Возвращаем состояние загрузки
    yield CharactersState.loading();
      characters = await _repository.getCharacters();
    yield CharactersState.data(
      characterList: characters!.data,
      isGrid: isGrid,
    );
  }

  Stream<CharactersState> _mapSelectedViewCharactersEvent(
      _SelectedViewCharactersEvent event) async* {
    yield CharactersState.loading();
    isGrid = !event.isGrid;
    yield CharactersState.data(
      characterList: characters!.data,
      isGrid: isGrid,
    );
  }

  Stream<CharactersState> _mapFindCharactersEvent(
      _FindCharactersEvent event) async* {
    /// Возвращаем состояние загрузки
    yield CharactersState.loading();
    List<Character> findCharactersList = characters!.findCharacters(event.value);
    yield CharactersState.data(
      characterList: findCharactersList,
      isGrid: isGrid,
    );
  }
}