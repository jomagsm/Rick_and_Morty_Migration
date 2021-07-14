  
part of 'main_screen_bloc.dart';

@freezed
abstract class MainScreenState with _$MainScreenState {
  const factory MainScreenState.data(
      {required Widget currentWidget,
      required int currentIndex}) = _DataMainScreenState;
  const factory MainScreenState.initial() = _InitialMainScreenState;
  const factory MainScreenState.loading() = _LoadingMainScreenState;
}