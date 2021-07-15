import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_null_safety/data/repository/repository.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/characters/character_model.dart';

part 'character_state.dart';
part 'character_event.dart';
part 'character_bloc.freezed.dart';

class CharacterProfileBloc
    extends Bloc<CharacterProfileEvent, CharacterProfileState> {
  final _repository = Repository();
  Character? character;
  CharacterProfileBloc() : super(CharacterProfileState.initial());

  @override
  Stream<CharacterProfileState> mapEventToState(
      CharacterProfileEvent gEvent) async* {
    yield* gEvent.map(
      initial: _initialEvent,
    );
  }

  Stream<CharacterProfileState> _initialEvent(
      _InitialCharacterProfileEvent event) async* {
    /// Возвращаем состояние загрузки
    yield CharacterProfileState.loading();
    try {
      character = await _repository.getCharacter(event.id);
    } catch (e) {
      CharacterProfileState.error(message: e.toString());
    }

    /// Возвращаем состояние с данными
    yield CharacterProfileState.data(
      character: character,
    );
  }
}