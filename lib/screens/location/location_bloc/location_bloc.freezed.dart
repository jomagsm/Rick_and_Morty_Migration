// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _DataLocationState data({required Location? location}) {
    return _DataLocationState(
      location: location,
    );
  }

  _InitialLocationState initial() {
    return const _InitialLocationState();
  }

  _LoadingLocationState loading() {
    return const _LoadingLocationState();
  }

  _ErrorLocationState error({required String? message}) {
    return _ErrorLocationState(
      message: message,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location? location) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location? location)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationState value) data,
    required TResult Function(_InitialLocationState value) initial,
    required TResult Function(_LoadingLocationState value) loading,
    required TResult Function(_ErrorLocationState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationState value)? data,
    TResult Function(_InitialLocationState value)? initial,
    TResult Function(_LoadingLocationState value)? loading,
    TResult Function(_ErrorLocationState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$DataLocationStateCopyWith<$Res> {
  factory _$DataLocationStateCopyWith(
          _DataLocationState value, $Res Function(_DataLocationState) then) =
      __$DataLocationStateCopyWithImpl<$Res>;
  $Res call({Location? location});
}

/// @nodoc
class __$DataLocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$DataLocationStateCopyWith<$Res> {
  __$DataLocationStateCopyWithImpl(
      _DataLocationState _value, $Res Function(_DataLocationState) _then)
      : super(_value, (v) => _then(v as _DataLocationState));

  @override
  _DataLocationState get _value => super._value as _DataLocationState;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_DataLocationState(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc

class _$_DataLocationState implements _DataLocationState {
  const _$_DataLocationState({required this.location});

  @override
  final Location? location;

  @override
  String toString() {
    return 'LocationState.data(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataLocationState &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$DataLocationStateCopyWith<_DataLocationState> get copyWith =>
      __$DataLocationStateCopyWithImpl<_DataLocationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location? location) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return data(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location? location)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationState value) data,
    required TResult Function(_InitialLocationState value) initial,
    required TResult Function(_LoadingLocationState value) loading,
    required TResult Function(_ErrorLocationState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationState value)? data,
    TResult Function(_InitialLocationState value)? initial,
    TResult Function(_LoadingLocationState value)? loading,
    TResult Function(_ErrorLocationState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataLocationState implements LocationState {
  const factory _DataLocationState({required Location? location}) =
      _$_DataLocationState;

  Location? get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataLocationStateCopyWith<_DataLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialLocationStateCopyWith<$Res> {
  factory _$InitialLocationStateCopyWith(_InitialLocationState value,
          $Res Function(_InitialLocationState) then) =
      __$InitialLocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialLocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$InitialLocationStateCopyWith<$Res> {
  __$InitialLocationStateCopyWithImpl(
      _InitialLocationState _value, $Res Function(_InitialLocationState) _then)
      : super(_value, (v) => _then(v as _InitialLocationState));

  @override
  _InitialLocationState get _value => super._value as _InitialLocationState;
}

/// @nodoc

class _$_InitialLocationState implements _InitialLocationState {
  const _$_InitialLocationState();

  @override
  String toString() {
    return 'LocationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialLocationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location? location) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location? location)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationState value) data,
    required TResult Function(_InitialLocationState value) initial,
    required TResult Function(_LoadingLocationState value) loading,
    required TResult Function(_ErrorLocationState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationState value)? data,
    TResult Function(_InitialLocationState value)? initial,
    TResult Function(_LoadingLocationState value)? loading,
    TResult Function(_ErrorLocationState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLocationState implements LocationState {
  const factory _InitialLocationState() = _$_InitialLocationState;
}

/// @nodoc
abstract class _$LoadingLocationStateCopyWith<$Res> {
  factory _$LoadingLocationStateCopyWith(_LoadingLocationState value,
          $Res Function(_LoadingLocationState) then) =
      __$LoadingLocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingLocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LoadingLocationStateCopyWith<$Res> {
  __$LoadingLocationStateCopyWithImpl(
      _LoadingLocationState _value, $Res Function(_LoadingLocationState) _then)
      : super(_value, (v) => _then(v as _LoadingLocationState));

  @override
  _LoadingLocationState get _value => super._value as _LoadingLocationState;
}

/// @nodoc

class _$_LoadingLocationState implements _LoadingLocationState {
  const _$_LoadingLocationState();

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingLocationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location? location) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location? location)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationState value) data,
    required TResult Function(_InitialLocationState value) initial,
    required TResult Function(_LoadingLocationState value) loading,
    required TResult Function(_ErrorLocationState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationState value)? data,
    TResult Function(_InitialLocationState value)? initial,
    TResult Function(_LoadingLocationState value)? loading,
    TResult Function(_ErrorLocationState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingLocationState implements LocationState {
  const factory _LoadingLocationState() = _$_LoadingLocationState;
}

/// @nodoc
abstract class _$ErrorLocationStateCopyWith<$Res> {
  factory _$ErrorLocationStateCopyWith(
          _ErrorLocationState value, $Res Function(_ErrorLocationState) then) =
      __$ErrorLocationStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ErrorLocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$ErrorLocationStateCopyWith<$Res> {
  __$ErrorLocationStateCopyWithImpl(
      _ErrorLocationState _value, $Res Function(_ErrorLocationState) _then)
      : super(_value, (v) => _then(v as _ErrorLocationState));

  @override
  _ErrorLocationState get _value => super._value as _ErrorLocationState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorLocationState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ErrorLocationState implements _ErrorLocationState {
  const _$_ErrorLocationState({required this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LocationState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorLocationState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorLocationStateCopyWith<_ErrorLocationState> get copyWith =>
      __$ErrorLocationStateCopyWithImpl<_ErrorLocationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Location? location) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location? location)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationState value) data,
    required TResult Function(_InitialLocationState value) initial,
    required TResult Function(_LoadingLocationState value) loading,
    required TResult Function(_ErrorLocationState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationState value)? data,
    TResult Function(_InitialLocationState value)? initial,
    TResult Function(_LoadingLocationState value)? loading,
    TResult Function(_ErrorLocationState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorLocationState implements LocationState {
  const factory _ErrorLocationState({required String? message}) =
      _$_ErrorLocationState;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorLocationStateCopyWith<_ErrorLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationEventTearOff {
  const _$LocationEventTearOff();

  _InitialLocationEvent initial({required String? id}) {
    return _InitialLocationEvent(
      id: id,
    );
  }
}

/// @nodoc
const $LocationEvent = _$LocationEventTearOff();

/// @nodoc
mixin _$LocationEvent {
  String? get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLocationEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationEventCopyWith<LocationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
  $Res call({String? id});
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$InitialLocationEventCopyWith<$Res>
    implements $LocationEventCopyWith<$Res> {
  factory _$InitialLocationEventCopyWith(_InitialLocationEvent value,
          $Res Function(_InitialLocationEvent) then) =
      __$InitialLocationEventCopyWithImpl<$Res>;
  @override
  $Res call({String? id});
}

/// @nodoc
class __$InitialLocationEventCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$InitialLocationEventCopyWith<$Res> {
  __$InitialLocationEventCopyWithImpl(
      _InitialLocationEvent _value, $Res Function(_InitialLocationEvent) _then)
      : super(_value, (v) => _then(v as _InitialLocationEvent));

  @override
  _InitialLocationEvent get _value => super._value as _InitialLocationEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_InitialLocationEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InitialLocationEvent implements _InitialLocationEvent {
  const _$_InitialLocationEvent({required this.id});

  @override
  final String? id;

  @override
  String toString() {
    return 'LocationEvent.initial(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialLocationEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$InitialLocationEventCopyWith<_InitialLocationEvent> get copyWith =>
      __$InitialLocationEventCopyWithImpl<_InitialLocationEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id) initial,
  }) {
    return initial(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLocationEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLocationEvent implements LocationEvent {
  const factory _InitialLocationEvent({required String? id}) =
      _$_InitialLocationEvent;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialLocationEventCopyWith<_InitialLocationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
