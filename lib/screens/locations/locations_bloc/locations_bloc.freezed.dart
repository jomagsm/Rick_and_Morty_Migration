// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'locations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationsStateTearOff {
  const _$LocationsStateTearOff();

  _DataLocationsState data({required List<Location>? locationsList}) {
    return _DataLocationsState(
      locationsList: locationsList,
    );
  }

  _ErrorLocationsState error({required String? message}) {
    return _ErrorLocationsState(
      message: message,
    );
  }

  _InitialLocationsState initial() {
    return const _InitialLocationsState();
  }

  _LoadLocationsState loading() {
    return const _LoadLocationsState();
  }
}

/// @nodoc
const $LocationsState = _$LocationsStateTearOff();

/// @nodoc
mixin _$LocationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Location>? locationsList) data,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location>? locationsList)? data,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationsState value) data,
    required TResult Function(_ErrorLocationsState value) error,
    required TResult Function(_InitialLocationsState value) initial,
    required TResult Function(_LoadLocationsState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationsState value)? data,
    TResult Function(_ErrorLocationsState value)? error,
    TResult Function(_InitialLocationsState value)? initial,
    TResult Function(_LoadLocationsState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsStateCopyWith<$Res> {
  factory $LocationsStateCopyWith(
          LocationsState value, $Res Function(LocationsState) then) =
      _$LocationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsStateCopyWithImpl<$Res>
    implements $LocationsStateCopyWith<$Res> {
  _$LocationsStateCopyWithImpl(this._value, this._then);

  final LocationsState _value;
  // ignore: unused_field
  final $Res Function(LocationsState) _then;
}

/// @nodoc
abstract class _$DataLocationsStateCopyWith<$Res> {
  factory _$DataLocationsStateCopyWith(
          _DataLocationsState value, $Res Function(_DataLocationsState) then) =
      __$DataLocationsStateCopyWithImpl<$Res>;
  $Res call({List<Location>? locationsList});
}

/// @nodoc
class __$DataLocationsStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$DataLocationsStateCopyWith<$Res> {
  __$DataLocationsStateCopyWithImpl(
      _DataLocationsState _value, $Res Function(_DataLocationsState) _then)
      : super(_value, (v) => _then(v as _DataLocationsState));

  @override
  _DataLocationsState get _value => super._value as _DataLocationsState;

  @override
  $Res call({
    Object? locationsList = freezed,
  }) {
    return _then(_DataLocationsState(
      locationsList: locationsList == freezed
          ? _value.locationsList
          : locationsList // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
    ));
  }
}

/// @nodoc

class _$_DataLocationsState implements _DataLocationsState {
  const _$_DataLocationsState({required this.locationsList});

  @override
  final List<Location>? locationsList;

  @override
  String toString() {
    return 'LocationsState.data(locationsList: $locationsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataLocationsState &&
            (identical(other.locationsList, locationsList) ||
                const DeepCollectionEquality()
                    .equals(other.locationsList, locationsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationsList);

  @JsonKey(ignore: true)
  @override
  _$DataLocationsStateCopyWith<_DataLocationsState> get copyWith =>
      __$DataLocationsStateCopyWithImpl<_DataLocationsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Location>? locationsList) data,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(locationsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location>? locationsList)? data,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(locationsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationsState value) data,
    required TResult Function(_ErrorLocationsState value) error,
    required TResult Function(_InitialLocationsState value) initial,
    required TResult Function(_LoadLocationsState value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationsState value)? data,
    TResult Function(_ErrorLocationsState value)? error,
    TResult Function(_InitialLocationsState value)? initial,
    TResult Function(_LoadLocationsState value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataLocationsState implements LocationsState {
  const factory _DataLocationsState({required List<Location>? locationsList}) =
      _$_DataLocationsState;

  List<Location>? get locationsList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataLocationsStateCopyWith<_DataLocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorLocationsStateCopyWith<$Res> {
  factory _$ErrorLocationsStateCopyWith(_ErrorLocationsState value,
          $Res Function(_ErrorLocationsState) then) =
      __$ErrorLocationsStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ErrorLocationsStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$ErrorLocationsStateCopyWith<$Res> {
  __$ErrorLocationsStateCopyWithImpl(
      _ErrorLocationsState _value, $Res Function(_ErrorLocationsState) _then)
      : super(_value, (v) => _then(v as _ErrorLocationsState));

  @override
  _ErrorLocationsState get _value => super._value as _ErrorLocationsState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorLocationsState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ErrorLocationsState implements _ErrorLocationsState {
  const _$_ErrorLocationsState({required this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LocationsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorLocationsState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorLocationsStateCopyWith<_ErrorLocationsState> get copyWith =>
      __$ErrorLocationsStateCopyWithImpl<_ErrorLocationsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Location>? locationsList) data,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location>? locationsList)? data,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(_DataLocationsState value) data,
    required TResult Function(_ErrorLocationsState value) error,
    required TResult Function(_InitialLocationsState value) initial,
    required TResult Function(_LoadLocationsState value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationsState value)? data,
    TResult Function(_ErrorLocationsState value)? error,
    TResult Function(_InitialLocationsState value)? initial,
    TResult Function(_LoadLocationsState value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorLocationsState implements LocationsState {
  const factory _ErrorLocationsState({required String? message}) =
      _$_ErrorLocationsState;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorLocationsStateCopyWith<_ErrorLocationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialLocationsStateCopyWith<$Res> {
  factory _$InitialLocationsStateCopyWith(_InitialLocationsState value,
          $Res Function(_InitialLocationsState) then) =
      __$InitialLocationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialLocationsStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$InitialLocationsStateCopyWith<$Res> {
  __$InitialLocationsStateCopyWithImpl(_InitialLocationsState _value,
      $Res Function(_InitialLocationsState) _then)
      : super(_value, (v) => _then(v as _InitialLocationsState));

  @override
  _InitialLocationsState get _value => super._value as _InitialLocationsState;
}

/// @nodoc

class _$_InitialLocationsState implements _InitialLocationsState {
  const _$_InitialLocationsState();

  @override
  String toString() {
    return 'LocationsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialLocationsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Location>? locationsList) data,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location>? locationsList)? data,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(_DataLocationsState value) data,
    required TResult Function(_ErrorLocationsState value) error,
    required TResult Function(_InitialLocationsState value) initial,
    required TResult Function(_LoadLocationsState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationsState value)? data,
    TResult Function(_ErrorLocationsState value)? error,
    TResult Function(_InitialLocationsState value)? initial,
    TResult Function(_LoadLocationsState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLocationsState implements LocationsState {
  const factory _InitialLocationsState() = _$_InitialLocationsState;
}

/// @nodoc
abstract class _$LoadLocationsStateCopyWith<$Res> {
  factory _$LoadLocationsStateCopyWith(
          _LoadLocationsState value, $Res Function(_LoadLocationsState) then) =
      __$LoadLocationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadLocationsStateCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$LoadLocationsStateCopyWith<$Res> {
  __$LoadLocationsStateCopyWithImpl(
      _LoadLocationsState _value, $Res Function(_LoadLocationsState) _then)
      : super(_value, (v) => _then(v as _LoadLocationsState));

  @override
  _LoadLocationsState get _value => super._value as _LoadLocationsState;
}

/// @nodoc

class _$_LoadLocationsState implements _LoadLocationsState {
  const _$_LoadLocationsState();

  @override
  String toString() {
    return 'LocationsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadLocationsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Location>? locationsList) data,
    required TResult Function(String? message) error,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location>? locationsList)? data,
    TResult Function(String? message)? error,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(_DataLocationsState value) data,
    required TResult Function(_ErrorLocationsState value) error,
    required TResult Function(_InitialLocationsState value) initial,
    required TResult Function(_LoadLocationsState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationsState value)? data,
    TResult Function(_ErrorLocationsState value)? error,
    TResult Function(_InitialLocationsState value)? initial,
    TResult Function(_LoadLocationsState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadLocationsState implements LocationsState {
  const factory _LoadLocationsState() = _$_LoadLocationsState;
}

/// @nodoc
class _$LocationsEventTearOff {
  const _$LocationsEventTearOff();

  _InitialLocationsEvent initial() {
    return const _InitialLocationsEvent();
  }
}

/// @nodoc
const $LocationsEvent = _$LocationsEventTearOff();

/// @nodoc
mixin _$LocationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLocationsEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationsEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsEventCopyWith<$Res> {
  factory $LocationsEventCopyWith(
          LocationsEvent value, $Res Function(LocationsEvent) then) =
      _$LocationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsEventCopyWithImpl<$Res>
    implements $LocationsEventCopyWith<$Res> {
  _$LocationsEventCopyWithImpl(this._value, this._then);

  final LocationsEvent _value;
  // ignore: unused_field
  final $Res Function(LocationsEvent) _then;
}

/// @nodoc
abstract class _$InitialLocationsEventCopyWith<$Res> {
  factory _$InitialLocationsEventCopyWith(_InitialLocationsEvent value,
          $Res Function(_InitialLocationsEvent) then) =
      __$InitialLocationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialLocationsEventCopyWithImpl<$Res>
    extends _$LocationsEventCopyWithImpl<$Res>
    implements _$InitialLocationsEventCopyWith<$Res> {
  __$InitialLocationsEventCopyWithImpl(_InitialLocationsEvent _value,
      $Res Function(_InitialLocationsEvent) _then)
      : super(_value, (v) => _then(v as _InitialLocationsEvent));

  @override
  _InitialLocationsEvent get _value => super._value as _InitialLocationsEvent;
}

/// @nodoc

class _$_InitialLocationsEvent implements _InitialLocationsEvent {
  const _$_InitialLocationsEvent();

  @override
  String toString() {
    return 'LocationsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialLocationsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(_InitialLocationsEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationsEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLocationsEvent implements LocationsEvent {
  const factory _InitialLocationsEvent() = _$_InitialLocationsEvent;
}
