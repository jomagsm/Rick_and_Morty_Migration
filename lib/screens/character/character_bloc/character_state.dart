part of 'character_bloc.dart';

@freezed
 class CharacterProfileState with _$CharacterProfileState {
  const factory CharacterProfileState.data({
    /// Параметры
    required final Character? character,
  }) = _DataCharacterProfileState;
  const factory CharacterProfileState.initial() = _InitialCharacterProfileState;
  const factory CharacterProfileState.loading() = _LoadingProgressCharacterProfileState;

  const factory CharacterProfileState.error({required String? message}) =
      _ErrorCharacterProfileState;
}