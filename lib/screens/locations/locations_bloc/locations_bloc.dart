import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_null_safety/data/repository/repository.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/main_models/location_model.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/response_model/locations_response_model.dart';

part 'locations_state.dart';
part 'locations_event.dart';
part 'locations_bloc.freezed.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  final _repository = Repository();
  List<Location>? locationsList;
  LocationsResponse? locationresponse;
  LocationsBloc() : super(LocationsState.initial());

  @override
  Stream<LocationsState> mapEventToState(LocationsEvent event) async* {
    yield* event.map(
      initial: _mapInitialLocationsEvent,
    );
  }

  Stream<LocationsState> _mapInitialLocationsEvent(
      _InitialLocationsEvent event) async* {
    yield LocationsState.loading();
    try {
      locationresponse = await _repository.getLocations();
      locationsList = locationresponse!.data;

      yield LocationsState.data(locationsList: locationsList);
    } catch (e) {
      yield LocationsState.error(message: e.toString());
    }
  }
}
