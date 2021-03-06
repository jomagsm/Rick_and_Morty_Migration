part of 'characters_list_bloc.dart';

@freezed
 class CharactersState with _$CharactersState {
  /// Состояние с данными
  const factory CharactersState.data({
    /// Параметры
    required final List<Character>? characterList,
    required final bool isGrid,
  }) = _DataCharactersState;

  /// Состояние инициализации
  const factory CharactersState.initial() = _InitialCharactersState;

  /// Состояние отображения этапа загрузки
  const factory CharactersState.loading() = _LoadingCharactersState;

}