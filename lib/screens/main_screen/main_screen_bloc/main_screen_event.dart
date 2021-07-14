part of 'main_screen_bloc.dart';

@freezed
abstract class MainScreenEvent with _$MainScreenEvent {
  const factory MainScreenEvent.initial() = _InitialMainScreenEvent;
  const factory MainScreenEvent.selectedView({required int currentIndex}) =
      _SelectedViewMainScreenEvent;
}