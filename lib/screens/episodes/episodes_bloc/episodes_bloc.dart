import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_null_safety/data/repository/repository.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/main_models/episode_model.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/response_model/episodes_response_model.dart';

part 'episodes_state.dart';
part 'episodes_event.dart';
part 'episodes_bloc.freezed.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  final _repository = Repository();
  EpisodesBloc() : super(EpisodesState.initial());
  int? seasonId = 1;
  List<int>? season = [1, 2, 3, 4];
  List<Episode>? seasonEpisodes;
  List<Episode>? allEpisodeList;
  EpisodeResponse? allEpisode;

  @override
  Stream<EpisodesState> mapEventToState(EpisodesEvent event) async* {
    yield* event.map(
      initial: _mapInitialEpisodesEvent,
      selectSeason: _mapSelectEpisodesEvent,
    );
  }

  Stream<EpisodesState> _mapInitialEpisodesEvent(
      _InitialEpisodesEvent event) async* {
    yield EpisodesState.loading();
    try {
      allEpisode = await _repository.getEpisodes();
      allEpisodeList = allEpisode!.data;
      seasonEpisodes = allEpisode?.getSeasonEpisode(seasonId);
      yield EpisodesState.data(season: season, episodes: seasonEpisodes);
    } catch (e) {
      print(e);
    }
  }

  Stream<EpisodesState> _mapSelectEpisodesEvent(
      _SelectEpisodesEvent event) async* {
    yield EpisodesState.loading();
    seasonId = event.seasonId;
    print("SEASON ID: $seasonId");
    
    seasonEpisodes = allEpisode?.getSeasonEpisode(seasonId);
    print(seasonEpisodes);
    yield EpisodesState.data(season: season, episodes: seasonEpisodes!);
  }
}
