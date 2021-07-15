import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_null_safety/screens/characters/screen.dart';
import 'package:rick_and_morty_null_safety/screens/episodes/episode_screen.dart';
import 'package:rick_and_morty_null_safety/screens/locations/locations_screen.dart';

part 'main_screen_state.dart';
part 'main_screen_event.dart';
part 'main_screen_bloc.freezed.dart';



class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc() : super(MainScreenState.initial());
  List<Widget> tabs = [
    CharactersScreen(),
    LocationList(),
    EpisodesList(),
    // SettingsScreen()
  ];

  int currentIndex = 0;

  @override
  Stream<MainScreenState> mapEventToState(
    MainScreenEvent event,
  ) async* {
    yield* event.map(
      initial: _mapInitialMainScreenEvent,
      selectedView: _mapSelectedViewMainScreenEvent,
    );
  }

  Stream<MainScreenState> _mapInitialMainScreenEvent(
      _InitialMainScreenEvent event) async* {
    yield MainScreenState.loading();
    yield MainScreenState.data(
        currentWidget: tabs[currentIndex], currentIndex: currentIndex);
  }

  Stream<MainScreenState> _mapSelectedViewMainScreenEvent(
      _SelectedViewMainScreenEvent event) async* {
    yield MainScreenState.loading();
    final currentIndex = event.currentIndex;
    yield MainScreenState.data(
        currentWidget: tabs[currentIndex], currentIndex: currentIndex);
  }
}