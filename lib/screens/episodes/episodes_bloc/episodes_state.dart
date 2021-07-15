part of 'episodes_bloc.dart';

@freezed
 class EpisodesState with _$EpisodesState {
  const factory EpisodesState.data({
    required List<int>? season,
    required List<Episode>? episodes,
  }) = _DataEpisodesState;
  const factory EpisodesState.initial() = _InitialEpisodesState;
  const factory EpisodesState.loading() = _LoadingEpisodesState;
  const factory EpisodesState.loadFailure() = _LoadFailureEpisodesState;
}
