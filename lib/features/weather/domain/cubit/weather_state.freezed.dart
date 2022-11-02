// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() loadInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather weather)? loadSuccess,
    TResult? Function()? loadFailure,
    TResult? Function()? loadInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? loadInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherSuccess value) loadSuccess,
    required TResult Function(_WeatherFailure value) loadFailure,
    required TResult Function(_WeatherProgress value) loadInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherSuccess value)? loadSuccess,
    TResult? Function(_WeatherFailure value)? loadFailure,
    TResult? Function(_WeatherProgress value)? loadInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherSuccess value)? loadSuccess,
    TResult Function(_WeatherFailure value)? loadFailure,
    TResult Function(_WeatherProgress value)? loadInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WeatherSuccessCopyWith<$Res> {
  factory _$$_WeatherSuccessCopyWith(
          _$_WeatherSuccess value, $Res Function(_$_WeatherSuccess) then) =
      __$$_WeatherSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Weather weather});
}

/// @nodoc
class __$$_WeatherSuccessCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherSuccess>
    implements _$$_WeatherSuccessCopyWith<$Res> {
  __$$_WeatherSuccessCopyWithImpl(
      _$_WeatherSuccess _value, $Res Function(_$_WeatherSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
  }) {
    return _then(_$_WeatherSuccess(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }
}

/// @nodoc

class _$_WeatherSuccess implements _WeatherSuccess {
  const _$_WeatherSuccess({required this.weather});

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherState.loadSuccess(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherSuccess &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherSuccessCopyWith<_$_WeatherSuccess> get copyWith =>
      __$$_WeatherSuccessCopyWithImpl<_$_WeatherSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() loadInProgress,
  }) {
    return loadSuccess(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather weather)? loadSuccess,
    TResult? Function()? loadFailure,
    TResult? Function()? loadInProgress,
  }) {
    return loadSuccess?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? loadInProgress,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherSuccess value) loadSuccess,
    required TResult Function(_WeatherFailure value) loadFailure,
    required TResult Function(_WeatherProgress value) loadInProgress,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherSuccess value)? loadSuccess,
    TResult? Function(_WeatherFailure value)? loadFailure,
    TResult? Function(_WeatherProgress value)? loadInProgress,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherSuccess value)? loadSuccess,
    TResult Function(_WeatherFailure value)? loadFailure,
    TResult Function(_WeatherProgress value)? loadInProgress,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _WeatherSuccess implements WeatherState {
  const factory _WeatherSuccess({required final Weather weather}) =
      _$_WeatherSuccess;

  Weather get weather;
  @JsonKey(ignore: true)
  _$$_WeatherSuccessCopyWith<_$_WeatherSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherFailureCopyWith<$Res> {
  factory _$$_WeatherFailureCopyWith(
          _$_WeatherFailure value, $Res Function(_$_WeatherFailure) then) =
      __$$_WeatherFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WeatherFailureCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherFailure>
    implements _$$_WeatherFailureCopyWith<$Res> {
  __$$_WeatherFailureCopyWithImpl(
      _$_WeatherFailure _value, $Res Function(_$_WeatherFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WeatherFailure implements _WeatherFailure {
  const _$_WeatherFailure();

  @override
  String toString() {
    return 'WeatherState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WeatherFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() loadInProgress,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather weather)? loadSuccess,
    TResult? Function()? loadFailure,
    TResult? Function()? loadInProgress,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? loadInProgress,
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
    required TResult Function(_WeatherSuccess value) loadSuccess,
    required TResult Function(_WeatherFailure value) loadFailure,
    required TResult Function(_WeatherProgress value) loadInProgress,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherSuccess value)? loadSuccess,
    TResult? Function(_WeatherFailure value)? loadFailure,
    TResult? Function(_WeatherProgress value)? loadInProgress,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherSuccess value)? loadSuccess,
    TResult Function(_WeatherFailure value)? loadFailure,
    TResult Function(_WeatherProgress value)? loadInProgress,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _WeatherFailure implements WeatherState {
  const factory _WeatherFailure() = _$_WeatherFailure;
}

/// @nodoc
abstract class _$$_WeatherProgressCopyWith<$Res> {
  factory _$$_WeatherProgressCopyWith(
          _$_WeatherProgress value, $Res Function(_$_WeatherProgress) then) =
      __$$_WeatherProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WeatherProgressCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherProgress>
    implements _$$_WeatherProgressCopyWith<$Res> {
  __$$_WeatherProgressCopyWithImpl(
      _$_WeatherProgress _value, $Res Function(_$_WeatherProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WeatherProgress implements _WeatherProgress {
  const _$_WeatherProgress();

  @override
  String toString() {
    return 'WeatherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WeatherProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Weather weather) loadSuccess,
    required TResult Function() loadFailure,
    required TResult Function() loadInProgress,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Weather weather)? loadSuccess,
    TResult? Function()? loadFailure,
    TResult? Function()? loadInProgress,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Weather weather)? loadSuccess,
    TResult Function()? loadFailure,
    TResult Function()? loadInProgress,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherSuccess value) loadSuccess,
    required TResult Function(_WeatherFailure value) loadFailure,
    required TResult Function(_WeatherProgress value) loadInProgress,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherSuccess value)? loadSuccess,
    TResult? Function(_WeatherFailure value)? loadFailure,
    TResult? Function(_WeatherProgress value)? loadInProgress,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherSuccess value)? loadSuccess,
    TResult Function(_WeatherFailure value)? loadFailure,
    TResult Function(_WeatherProgress value)? loadInProgress,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _WeatherProgress implements WeatherState {
  const factory _WeatherProgress() = _$_WeatherProgress;
}
