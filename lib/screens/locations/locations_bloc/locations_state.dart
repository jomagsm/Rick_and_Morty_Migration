part of 'locations_bloc.dart';


@freezed
abstract class LocationsState with _$LocationsState {
  const factory LocationsState.data({required List<Location>? locationsList}) =
      _DataLocationsState;
  const factory LocationsState.error({required String? message}) = _ErrorLocationsState;
  const factory LocationsState.initial() = _InitialLocationsState;
  const factory LocationsState.loading() = _LoadLocationsState;
}