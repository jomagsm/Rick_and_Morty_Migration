// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'episodes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EpisodesStateTearOff {
  const _$EpisodesStateTearOff();

  _DataEpisodesState data(
      {required List<int>? season, required List<Episode>? episodes}) {
    return _DataEpisodesState(
      season: season,
      episodes: episodes,
    );
  }

  _InitialEpisodesState initial() {
    return const _InitialEpisodesState();
  }

  _LoadingEpisodesState loading() {
    return const _LoadingEpisodesState();
  }

  _LoadFailureEpisodesState loadFailure() {
    return const _LoadFailureEpisodesState();
  }
}

/// @nodoc
const $EpisodesState = _$EpisodesStateTearOff();

/// @nodoc
mixin _$EpisodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int>? season, List<Episode>? episodes) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int>? season, List<Episode>? episodes)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEpisodesState value) data,
    required TResult Function(_InitialEpisodesState value) initial,
    required TResult Function(_LoadingEpisodesState value) loading,
    required TResult Function(_LoadFailureEpisodesState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodesState value)? data,
    TResult Function(_InitialEpisodesState value)? initial,
    TResult Function(_LoadingEpisodesState value)? loading,
    TResult Function(_LoadFailureEpisodesState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesStateCopyWith<$Res> {
  factory $EpisodesStateCopyWith(
          EpisodesState value, $Res Function(EpisodesState) then) =
      _$EpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesStateCopyWithImpl<$Res>
    implements $EpisodesStateCopyWith<$Res> {
  _$EpisodesStateCopyWithImpl(this._value, this._then);

  final EpisodesState _value;
  // ignore: unused_field
  final $Res Function(EpisodesState) _then;
}

/// @nodoc
abstract class _$DataEpisodesStateCopyWith<$Res> {
  factory _$DataEpisodesStateCopyWith(
          _DataEpisodesState value, $Res Function(_DataEpisodesState) then) =
      __$DataEpisodesStateCopyWithImpl<$Res>;
  $Res call({List<int>? season, List<Episode>? episodes});
}

/// @nodoc
class __$DataEpisodesStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$DataEpisodesStateCopyWith<$Res> {
  __$DataEpisodesStateCopyWithImpl(
      _DataEpisodesState _value, $Res Function(_DataEpisodesState) _then)
      : super(_value, (v) => _then(v as _DataEpisodesState));

  @override
  _DataEpisodesState get _value => super._value as _DataEpisodesState;

  @override
  $Res call({
    Object? season = freezed,
    Object? episodes = freezed,
  }) {
    return _then(_DataEpisodesState(
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
    ));
  }
}

/// @nodoc

class _$_DataEpisodesState implements _DataEpisodesState {
  const _$_DataEpisodesState({required this.season, required this.episodes});

  @override
  final List<int>? season;
  @override
  final List<Episode>? episodes;

  @override
  String toString() {
    return 'EpisodesState.data(season: $season, episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataEpisodesState &&
            (identical(other.season, season) ||
                const DeepCollectionEquality().equals(other.season, season)) &&
            (identical(other.episodes, episodes) ||
                const DeepCollectionEquality()
                    .equals(other.episodes, episodes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(season) ^
      const DeepCollectionEquality().hash(episodes);

  @JsonKey(ignore: true)
  @override
  _$DataEpisodesStateCopyWith<_DataEpisodesState> get copyWith =>
      __$DataEpisodesStateCopyWithImpl<_DataEpisodesState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int>? season, List<Episode>? episodes) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadFailure,
  }) {
    return data(season, episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int>? season, List<Episode>? episodes)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(season, episodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEpisodesState value) data,
    required TResult Function(_InitialEpisodesState value) initial,
    required TResult Function(_LoadingEpisodesState value) loading,
    required TResult Function(_LoadFailureEpisodesState value) loadFailure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodesState value)? data,
    TResult Function(_InitialEpisodesState value)? initial,
    TResult Function(_LoadingEpisodesState value)? loading,
    TResult Function(_LoadFailureEpisodesState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataEpisodesState implements EpisodesState {
  const factory _DataEpisodesState(
      {required List<int>? season,
      required List<Episode>? episodes}) = _$_DataEpisodesState;

  List<int>? get season => throw _privateConstructorUsedError;
  List<Episode>? get episodes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataEpisodesStateCopyWith<_DataEpisodesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialEpisodesStateCopyWith<$Res> {
  factory _$InitialEpisodesStateCopyWith(_InitialEpisodesState value,
          $Res Function(_InitialEpisodesState) then) =
      __$InitialEpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialEpisodesStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$InitialEpisodesStateCopyWith<$Res> {
  __$InitialEpisodesStateCopyWithImpl(
      _InitialEpisodesState _value, $Res Function(_InitialEpisodesState) _then)
      : super(_value, (v) => _then(v as _InitialEpisodesState));

  @override
  _InitialEpisodesState get _value => super._value as _InitialEpisodesState;
}

/// @nodoc

class _$_InitialEpisodesState implements _InitialEpisodesState {
  const _$_InitialEpisodesState();

  @override
  String toString() {
    return 'EpisodesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialEpisodesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int>? season, List<Episode>? episodes) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int>? season, List<Episode>? episodes)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadFailure,
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
    required TResult Function(_DataEpisodesState value) data,
    required TResult Function(_InitialEpisodesState value) initial,
    required TResult Function(_LoadingEpisodesState value) loading,
    required TResult Function(_LoadFailureEpisodesState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodesState value)? data,
    TResult Function(_InitialEpisodesState value)? initial,
    TResult Function(_LoadingEpisodesState value)? loading,
    TResult Function(_LoadFailureEpisodesState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEpisodesState implements EpisodesState {
  const factory _InitialEpisodesState() = _$_InitialEpisodesState;
}

/// @nodoc
abstract class _$LoadingEpisodesStateCopyWith<$Res> {
  factory _$LoadingEpisodesStateCopyWith(_LoadingEpisodesState value,
          $Res Function(_LoadingEpisodesState) then) =
      __$LoadingEpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingEpisodesStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$LoadingEpisodesStateCopyWith<$Res> {
  __$LoadingEpisodesStateCopyWithImpl(
      _LoadingEpisodesState _value, $Res Function(_LoadingEpisodesState) _then)
      : super(_value, (v) => _then(v as _LoadingEpisodesState));

  @override
  _LoadingEpisodesState get _value => super._value as _LoadingEpisodesState;
}

/// @nodoc

class _$_LoadingEpisodesState implements _LoadingEpisodesState {
  const _$_LoadingEpisodesState();

  @override
  String toString() {
    return 'EpisodesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingEpisodesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int>? season, List<Episode>? episodes) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int>? season, List<Episode>? episodes)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadFailure,
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
    required TResult Function(_DataEpisodesState value) data,
    required TResult Function(_InitialEpisodesState value) initial,
    required TResult Function(_LoadingEpisodesState value) loading,
    required TResult Function(_LoadFailureEpisodesState value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodesState value)? data,
    TResult Function(_InitialEpisodesState value)? initial,
    TResult Function(_LoadingEpisodesState value)? loading,
    TResult Function(_LoadFailureEpisodesState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingEpisodesState implements EpisodesState {
  const factory _LoadingEpisodesState() = _$_LoadingEpisodesState;
}

/// @nodoc
abstract class _$LoadFailureEpisodesStateCopyWith<$Res> {
  factory _$LoadFailureEpisodesStateCopyWith(_LoadFailureEpisodesState value,
          $Res Function(_LoadFailureEpisodesState) then) =
      __$LoadFailureEpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadFailureEpisodesStateCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$LoadFailureEpisodesStateCopyWith<$Res> {
  __$LoadFailureEpisodesStateCopyWithImpl(_LoadFailureEpisodesState _value,
      $Res Function(_LoadFailureEpisodesState) _then)
      : super(_value, (v) => _then(v as _LoadFailureEpisodesState));

  @override
  _LoadFailureEpisodesState get _value =>
      super._value as _LoadFailureEpisodesState;
}

/// @nodoc

class _$_LoadFailureEpisodesState implements _LoadFailureEpisodesState {
  const _$_LoadFailureEpisodesState();

  @override
  String toString() {
    return 'EpisodesState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailureEpisodesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int>? season, List<Episode>? episodes) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int>? season, List<Episode>? episodes)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEpisodesState value) data,
    required TResult Function(_InitialEpisodesState value) initial,
    required TResult Function(_LoadingEpisodesState value) loading,
    required TResult Function(_LoadFailureEpisodesState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodesState value)? data,
    TResult Function(_InitialEpisodesState value)? initial,
    TResult Function(_LoadingEpisodesState value)? loading,
    TResult Function(_LoadFailureEpisodesState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailureEpisodesState implements EpisodesState {
  const factory _LoadFailureEpisodesState() = _$_LoadFailureEpisodesState;
}

/// @nodoc
class _$EpisodesEventTearOff {
  const _$EpisodesEventTearOff();

  _InitialEpisodesEvent initial() {
    return const _InitialEpisodesEvent();
  }

  _SelectEpisodesEvent selectSeason({required int? seasonId}) {
    return _SelectEpisodesEvent(
      seasonId: seasonId,
    );
  }
}

/// @nodoc
const $EpisodesEvent = _$EpisodesEventTearOff();

/// @nodoc
mixin _$EpisodesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? seasonId) selectSeason,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? seasonId)? selectSeason,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEpisodesEvent value) initial,
    required TResult Function(_SelectEpisodesEvent value) selectSeason,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEpisodesEvent value)? initial,
    TResult Function(_SelectEpisodesEvent value)? selectSeason,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesEventCopyWith<$Res> {
  factory $EpisodesEventCopyWith(
          EpisodesEvent value, $Res Function(EpisodesEvent) then) =
      _$EpisodesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesEventCopyWithImpl<$Res>
    implements $EpisodesEventCopyWith<$Res> {
  _$EpisodesEventCopyWithImpl(this._value, this._then);

  final EpisodesEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodesEvent) _then;
}

/// @nodoc
abstract class _$InitialEpisodesEventCopyWith<$Res> {
  factory _$InitialEpisodesEventCopyWith(_InitialEpisodesEvent value,
          $Res Function(_InitialEpisodesEvent) then) =
      __$InitialEpisodesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialEpisodesEventCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$InitialEpisodesEventCopyWith<$Res> {
  __$InitialEpisodesEventCopyWithImpl(
      _InitialEpisodesEvent _value, $Res Function(_InitialEpisodesEvent) _then)
      : super(_value, (v) => _then(v as _InitialEpisodesEvent));

  @override
  _InitialEpisodesEvent get _value => super._value as _InitialEpisodesEvent;
}

/// @nodoc

class _$_InitialEpisodesEvent implements _InitialEpisodesEvent {
  const _$_InitialEpisodesEvent();

  @override
  String toString() {
    return 'EpisodesEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialEpisodesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? seasonId) selectSeason,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? seasonId)? selectSeason,
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
    required TResult Function(_InitialEpisodesEvent value) initial,
    required TResult Function(_SelectEpisodesEvent value) selectSeason,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEpisodesEvent value)? initial,
    TResult Function(_SelectEpisodesEvent value)? selectSeason,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEpisodesEvent implements EpisodesEvent {
  const factory _InitialEpisodesEvent() = _$_InitialEpisodesEvent;
}

/// @nodoc
abstract class _$SelectEpisodesEventCopyWith<$Res> {
  factory _$SelectEpisodesEventCopyWith(_SelectEpisodesEvent value,
          $Res Function(_SelectEpisodesEvent) then) =
      __$SelectEpisodesEventCopyWithImpl<$Res>;
  $Res call({int? seasonId});
}

/// @nodoc
class __$SelectEpisodesEventCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$SelectEpisodesEventCopyWith<$Res> {
  __$SelectEpisodesEventCopyWithImpl(
      _SelectEpisodesEvent _value, $Res Function(_SelectEpisodesEvent) _then)
      : super(_value, (v) => _then(v as _SelectEpisodesEvent));

  @override
  _SelectEpisodesEvent get _value => super._value as _SelectEpisodesEvent;

  @override
  $Res call({
    Object? seasonId = freezed,
  }) {
    return _then(_SelectEpisodesEvent(
      seasonId: seasonId == freezed
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SelectEpisodesEvent implements _SelectEpisodesEvent {
  const _$_SelectEpisodesEvent({required this.seasonId});

  @override
  final int? seasonId;

  @override
  String toString() {
    return 'EpisodesEvent.selectSeason(seasonId: $seasonId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectEpisodesEvent &&
            (identical(other.seasonId, seasonId) ||
                const DeepCollectionEquality()
                    .equals(other.seasonId, seasonId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seasonId);

  @JsonKey(ignore: true)
  @override
  _$SelectEpisodesEventCopyWith<_SelectEpisodesEvent> get copyWith =>
      __$SelectEpisodesEventCopyWithImpl<_SelectEpisodesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? seasonId) selectSeason,
  }) {
    return selectSeason(seasonId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? seasonId)? selectSeason,
    required TResult orElse(),
  }) {
    if (selectSeason != null) {
      return selectSeason(seasonId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEpisodesEvent value) initial,
    required TResult Function(_SelectEpisodesEvent value) selectSeason,
  }) {
    return selectSeason(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEpisodesEvent value)? initial,
    TResult Function(_SelectEpisodesEvent value)? selectSeason,
    required TResult orElse(),
  }) {
    if (selectSeason != null) {
      return selectSeason(this);
    }
    return orElse();
  }
}

abstract class _SelectEpisodesEvent implements EpisodesEvent {
  const factory _SelectEpisodesEvent({required int? seasonId}) =
      _$_SelectEpisodesEvent;

  int? get seasonId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectEpisodesEventCopyWith<_SelectEpisodesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
