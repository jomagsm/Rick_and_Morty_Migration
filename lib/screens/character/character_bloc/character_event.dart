part of 'character_bloc.dart';

@freezed
 class CharacterProfileEvent with _$CharacterProfileEvent {
  const factory CharacterProfileEvent.initial({
    required String? id,
  }) = _InitialCharacterProfileEvent;
}