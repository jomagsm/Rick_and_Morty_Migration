part of 'characters_list_bloc.dart';

@freezed
  class CharactersEvent with _$CharactersEvent {
  /// Событие инициализации
  const factory CharactersEvent.initial() = _InitialCharactersEvent;

  ///Событие выбора темы
  const factory CharactersEvent.selectedView({
    required bool isGrid,
  }) = _SelectedViewCharactersEvent;

  const factory CharactersEvent.find({
    required String value,
  }) = _FindCharactersEvent;
}