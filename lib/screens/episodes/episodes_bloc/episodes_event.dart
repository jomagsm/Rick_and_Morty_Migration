part of 'episodes_bloc.dart';

@freezed
class EpisodesEvent with _$EpisodesEvent {
  const factory EpisodesEvent.initial() = _InitialEpisodesEvent;
  const factory EpisodesEvent.selectSeason({required int? seasonId}) =
      _SelectEpisodesEvent;
}
