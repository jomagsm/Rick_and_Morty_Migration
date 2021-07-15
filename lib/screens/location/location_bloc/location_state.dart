part of 'location_bloc.dart';

@freezed
 class LocationState with _$LocationState {
  const factory LocationState.data({
    required final Location? location,
  }) = _DataLocationState;
  const factory LocationState.initial() = _InitialLocationState;
  const factory LocationState.loading() = _LoadingLocationState;
  const factory LocationState.error({required String? message}) = _ErrorLocationState;
}
