import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_null_safety/data/repository/repository.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/main_models/location_model.dart';
import 'package:rick_and_morty_null_safety/data/server_api/models/response_model/location_response_model.dart';

part 'location_state.dart';
part 'location_event.dart';
part 'location_bloc.freezed.dart';

 class LocationBloc extends Bloc<LocationEvent, LocationState> {
   final _repository = Repository();
   LocationResponse? locationResponse;
   Location? location; 
  LocationBloc() : super(LocationState.initial());

  @override
  Stream<LocationState> mapEventToState(LocationEvent gEvent) async* {
    yield* gEvent.map(
      initial: _mapInitialEvent,
    );
  }

  Stream<LocationState> _mapInitialEvent(_InitialLocationEvent event) async* {
    yield LocationState.loading();
    try {
      locationResponse = await _repository.getLocationById(event.id);
      location = locationResponse!.data;
      yield LocationState.data(location: location);
    } catch (e) {
      yield LocationState.error(message: e.toString());
    }
    
  }
}