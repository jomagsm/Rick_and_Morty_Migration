// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharacterProfileStateTearOff {
  const _$CharacterProfileStateTearOff();

  _DataCharacterProfileState data({required Character? character}) {
    return _DataCharacterProfileState(
      character: character,
    );
  }

  _InitialCharacterProfileState initial() {
    return const _InitialCharacterProfileState();
  }

  _LoadingProgressCharacterProfileState loading() {
    return const _LoadingProgressCharacterProfileState();
  }

  _ErrorCharacterProfileState error({required String? message}) {
    return _ErrorCharacterProfileState(
      message: message,
    );
  }
}

/// @nodoc
const $CharacterProfileState = _$CharacterProfileStateTearOff();

/// @nodoc
mixin _$CharacterProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character? character) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character? character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataCharacterProfileState value) data,
    required TResult Function(_InitialCharacterProfileState value) initial,
    required TResult Function(_LoadingProgressCharacterProfileState value)
        loading,
    required TResult Function(_ErrorCharacterProfileState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharacterProfileState value)? data,
    TResult Function(_InitialCharacterProfileState value)? initial,
    TResult Function(_LoadingProgressCharacterProfileState value)? loading,
    TResult Function(_ErrorCharacterProfileState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterProfileStateCopyWith<$Res> {
  factory $CharacterProfileStateCopyWith(CharacterProfileState value,
          $Res Function(CharacterProfileState) then) =
      _$CharacterProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterProfileStateCopyWithImpl<$Res>
    implements $CharacterProfileStateCopyWith<$Res> {
  _$CharacterProfileStateCopyWithImpl(this._value, this._then);

  final CharacterProfileState _value;
  // ignore: unused_field
  final $Res Function(CharacterProfileState) _then;
}

/// @nodoc
abstract class _$DataCharacterProfileStateCopyWith<$Res> {
  factory _$DataCharacterProfileStateCopyWith(_DataCharacterProfileState value,
          $Res Function(_DataCharacterProfileState) then) =
      __$DataCharacterProfileStateCopyWithImpl<$Res>;
  $Res call({Character? character});
}

/// @nodoc
class __$DataCharacterProfileStateCopyWithImpl<$Res>
    extends _$CharacterProfileStateCopyWithImpl<$Res>
    implements _$DataCharacterProfileStateCopyWith<$Res> {
  __$DataCharacterProfileStateCopyWithImpl(_DataCharacterProfileState _value,
      $Res Function(_DataCharacterProfileState) _then)
      : super(_value, (v) => _then(v as _DataCharacterProfileState));

  @override
  _DataCharacterProfileState get _value =>
      super._value as _DataCharacterProfileState;

  @override
  $Res call({
    Object? character = freezed,
  }) {
    return _then(_DataCharacterProfileState(
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }
}

/// @nodoc

class _$_DataCharacterProfileState implements _DataCharacterProfileState {
  const _$_DataCharacterProfileState({required this.character});

  @override

  /// Параметры
  final Character? character;

  @override
  String toString() {
    return 'CharacterProfileState.data(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataCharacterProfileState &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(character);

  @JsonKey(ignore: true)
  @override
  _$DataCharacterProfileStateCopyWith<_DataCharacterProfileState>
      get copyWith =>
          __$DataCharacterProfileStateCopyWithImpl<_DataCharacterProfileState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character? character) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return data(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character? character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataCharacterProfileState value) data,
    required TResult Function(_InitialCharacterProfileState value) initial,
    required TResult Function(_LoadingProgressCharacterProfileState value)
        loading,
    required TResult Function(_ErrorCharacterProfileState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharacterProfileState value)? data,
    TResult Function(_InitialCharacterProfileState value)? initial,
    TResult Function(_LoadingProgressCharacterProfileState value)? loading,
    TResult Function(_ErrorCharacterProfileState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataCharacterProfileState implements CharacterProfileState {
  const factory _DataCharacterProfileState({required Character? character}) =
      _$_DataCharacterProfileState;

  /// Параметры
  Character? get character => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCharacterProfileStateCopyWith<_DataCharacterProfileState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialCharacterProfileStateCopyWith<$Res> {
  factory _$InitialCharacterProfileStateCopyWith(
          _InitialCharacterProfileState value,
          $Res Function(_InitialCharacterProfileState) then) =
      __$InitialCharacterProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCharacterProfileStateCopyWithImpl<$Res>
    extends _$CharacterProfileStateCopyWithImpl<$Res>
    implements _$InitialCharacterProfileStateCopyWith<$Res> {
  __$InitialCharacterProfileStateCopyWithImpl(
      _InitialCharacterProfileState _value,
      $Res Function(_InitialCharacterProfileState) _then)
      : super(_value, (v) => _then(v as _InitialCharacterProfileState));

  @override
  _InitialCharacterProfileState get _value =>
      super._value as _InitialCharacterProfileState;
}

/// @nodoc

class _$_InitialCharacterProfileState implements _InitialCharacterProfileState {
  const _$_InitialCharacterProfileState();

  @override
  String toString() {
    return 'CharacterProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialCharacterProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character? character) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character? character)? data,
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
    required TResult Function(_DataCharacterProfileState value) data,
    required TResult Function(_InitialCharacterProfileState value) initial,
    required TResult Function(_LoadingProgressCharacterProfileState value)
        loading,
    required TResult Function(_ErrorCharacterProfileState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharacterProfileState value)? data,
    TResult Function(_InitialCharacterProfileState value)? initial,
    TResult Function(_LoadingProgressCharacterProfileState value)? loading,
    TResult Function(_ErrorCharacterProfileState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCharacterProfileState implements CharacterProfileState {
  const factory _InitialCharacterProfileState() =
      _$_InitialCharacterProfileState;
}

/// @nodoc
abstract class _$LoadingProgressCharacterProfileStateCopyWith<$Res> {
  factory _$LoadingProgressCharacterProfileStateCopyWith(
          _LoadingProgressCharacterProfileState value,
          $Res Function(_LoadingProgressCharacterProfileState) then) =
      __$LoadingProgressCharacterProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingProgressCharacterProfileStateCopyWithImpl<$Res>
    extends _$CharacterProfileStateCopyWithImpl<$Res>
    implements _$LoadingProgressCharacterProfileStateCopyWith<$Res> {
  __$LoadingProgressCharacterProfileStateCopyWithImpl(
      _LoadingProgressCharacterProfileState _value,
      $Res Function(_LoadingProgressCharacterProfileState) _then)
      : super(_value, (v) => _then(v as _LoadingProgressCharacterProfileState));

  @override
  _LoadingProgressCharacterProfileState get _value =>
      super._value as _LoadingProgressCharacterProfileState;
}

/// @nodoc

class _$_LoadingProgressCharacterProfileState
    implements _LoadingProgressCharacterProfileState {
  const _$_LoadingProgressCharacterProfileState();

  @override
  String toString() {
    return 'CharacterProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingProgressCharacterProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character? character) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character? character)? data,
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
    required TResult Function(_DataCharacterProfileState value) data,
    required TResult Function(_InitialCharacterProfileState value) initial,
    required TResult Function(_LoadingProgressCharacterProfileState value)
        loading,
    required TResult Function(_ErrorCharacterProfileState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharacterProfileState value)? data,
    TResult Function(_InitialCharacterProfileState value)? initial,
    TResult Function(_LoadingProgressCharacterProfileState value)? loading,
    TResult Function(_ErrorCharacterProfileState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingProgressCharacterProfileState
    implements CharacterProfileState {
  const factory _LoadingProgressCharacterProfileState() =
      _$_LoadingProgressCharacterProfileState;
}

/// @nodoc
abstract class _$ErrorCharacterProfileStateCopyWith<$Res> {
  factory _$ErrorCharacterProfileStateCopyWith(
          _ErrorCharacterProfileState value,
          $Res Function(_ErrorCharacterProfileState) then) =
      __$ErrorCharacterProfileStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ErrorCharacterProfileStateCopyWithImpl<$Res>
    extends _$CharacterProfileStateCopyWithImpl<$Res>
    implements _$ErrorCharacterProfileStateCopyWith<$Res> {
  __$ErrorCharacterProfileStateCopyWithImpl(_ErrorCharacterProfileState _value,
      $Res Function(_ErrorCharacterProfileState) _then)
      : super(_value, (v) => _then(v as _ErrorCharacterProfileState));

  @override
  _ErrorCharacterProfileState get _value =>
      super._value as _ErrorCharacterProfileState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorCharacterProfileState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ErrorCharacterProfileState implements _ErrorCharacterProfileState {
  const _$_ErrorCharacterProfileState({required this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'CharacterProfileState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorCharacterProfileState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorCharacterProfileStateCopyWith<_ErrorCharacterProfileState>
      get copyWith => __$ErrorCharacterProfileStateCopyWithImpl<
          _ErrorCharacterProfileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character? character) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character? character)? data,
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
    required TResult Function(_DataCharacterProfileState value) data,
    required TResult Function(_InitialCharacterProfileState value) initial,
    required TResult Function(_LoadingProgressCharacterProfileState value)
        loading,
    required TResult Function(_ErrorCharacterProfileState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharacterProfileState value)? data,
    TResult Function(_InitialCharacterProfileState value)? initial,
    TResult Function(_LoadingProgressCharacterProfileState value)? loading,
    TResult Function(_ErrorCharacterProfileState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorCharacterProfileState implements CharacterProfileState {
  const factory _ErrorCharacterProfileState({required String? message}) =
      _$_ErrorCharacterProfileState;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCharacterProfileStateCopyWith<_ErrorCharacterProfileState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CharacterProfileEventTearOff {
  const _$CharacterProfileEventTearOff();

  _InitialCharacterProfileEvent initial({required String? id}) {
    return _InitialCharacterProfileEvent(
      id: id,
    );
  }
}

/// @nodoc
const $CharacterProfileEvent = _$CharacterProfileEventTearOff();

/// @nodoc
mixin _$CharacterProfileEvent {
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
    required TResult Function(_InitialCharacterProfileEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharacterProfileEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterProfileEventCopyWith<CharacterProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterProfileEventCopyWith<$Res> {
  factory $CharacterProfileEventCopyWith(CharacterProfileEvent value,
          $Res Function(CharacterProfileEvent) then) =
      _$CharacterProfileEventCopyWithImpl<$Res>;
  $Res call({String? id});
}

/// @nodoc
class _$CharacterProfileEventCopyWithImpl<$Res>
    implements $CharacterProfileEventCopyWith<$Res> {
  _$CharacterProfileEventCopyWithImpl(this._value, this._then);

  final CharacterProfileEvent _value;
  // ignore: unused_field
  final $Res Function(CharacterProfileEvent) _then;

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
abstract class _$InitialCharacterProfileEventCopyWith<$Res>
    implements $CharacterProfileEventCopyWith<$Res> {
  factory _$InitialCharacterProfileEventCopyWith(
          _InitialCharacterProfileEvent value,
          $Res Function(_InitialCharacterProfileEvent) then) =
      __$InitialCharacterProfileEventCopyWithImpl<$Res>;
  @override
  $Res call({String? id});
}

/// @nodoc
class __$InitialCharacterProfileEventCopyWithImpl<$Res>
    extends _$CharacterProfileEventCopyWithImpl<$Res>
    implements _$InitialCharacterProfileEventCopyWith<$Res> {
  __$InitialCharacterProfileEventCopyWithImpl(
      _InitialCharacterProfileEvent _value,
      $Res Function(_InitialCharacterProfileEvent) _then)
      : super(_value, (v) => _then(v as _InitialCharacterProfileEvent));

  @override
  _InitialCharacterProfileEvent get _value =>
      super._value as _InitialCharacterProfileEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_InitialCharacterProfileEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InitialCharacterProfileEvent implements _InitialCharacterProfileEvent {
  const _$_InitialCharacterProfileEvent({required this.id});

  @override
  final String? id;

  @override
  String toString() {
    return 'CharacterProfileEvent.initial(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialCharacterProfileEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$InitialCharacterProfileEventCopyWith<_InitialCharacterProfileEvent>
      get copyWith => __$InitialCharacterProfileEventCopyWithImpl<
          _InitialCharacterProfileEvent>(this, _$identity);

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
    required TResult Function(_InitialCharacterProfileEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharacterProfileEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCharacterProfileEvent implements CharacterProfileEvent {
  const factory _InitialCharacterProfileEvent({required String? id}) =
      _$_InitialCharacterProfileEvent;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCharacterProfileEventCopyWith<_InitialCharacterProfileEvent>
      get copyWith => throw _privateConstructorUsedError;
}
