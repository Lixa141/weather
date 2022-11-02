// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hourly_weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HourlyWeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DayWeather> hourlyWeather) loadSuccess,
    required TResult Function() loadInProgress,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DayWeather> hourlyWeather)? loadSuccess,
    TResult? Function()? loadInProgress,
    TResult? Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DayWeather> hourlyWeather)? loadSuccess,
    TResult Function()? loadInProgress,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HourlyWeatherSuccess value) loadSuccess,
    required TResult Function(_HourlyWeatherInProgress value) loadInProgress,
    required TResult Function(_HourlyWeatherFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HourlyWeatherSuccess value)? loadSuccess,
    TResult? Function(_HourlyWeatherInProgress value)? loadInProgress,
    TResult? Function(_HourlyWeatherFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HourlyWeatherSuccess value)? loadSuccess,
    TResult Function(_HourlyWeatherInProgress value)? loadInProgress,
    TResult Function(_HourlyWeatherFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWeatherStateCopyWith<$Res> {
  factory $HourlyWeatherStateCopyWith(
          HourlyWeatherState value, $Res Function(HourlyWeatherState) then) =
      _$HourlyWeatherStateCopyWithImpl<$Res, HourlyWeatherState>;
}

/// @nodoc
class _$HourlyWeatherStateCopyWithImpl<$Res, $Val extends HourlyWeatherState>
    implements $HourlyWeatherStateCopyWith<$Res> {
  _$HourlyWeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HourlyWeatherSuccessCopyWith<$Res> {
  factory _$$_HourlyWeatherSuccessCopyWith(_$_HourlyWeatherSuccess value,
          $Res Function(_$_HourlyWeatherSuccess) then) =
      __$$_HourlyWeatherSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DayWeather> hourlyWeather});
}

/// @nodoc
class __$$_HourlyWeatherSuccessCopyWithImpl<$Res>
    extends _$HourlyWeatherStateCopyWithImpl<$Res, _$_HourlyWeatherSuccess>
    implements _$$_HourlyWeatherSuccessCopyWith<$Res> {
  __$$_HourlyWeatherSuccessCopyWithImpl(_$_HourlyWeatherSuccess _value,
      $Res Function(_$_HourlyWeatherSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourlyWeather = null,
  }) {
    return _then(_$_HourlyWeatherSuccess(
      hourlyWeather: null == hourlyWeather
          ? _value._hourlyWeather
          : hourlyWeather // ignore: cast_nullable_to_non_nullable
              as List<DayWeather>,
    ));
  }
}

/// @nodoc

class _$_HourlyWeatherSuccess implements _HourlyWeatherSuccess {
  const _$_HourlyWeatherSuccess({required final List<DayWeather> hourlyWeather})
      : _hourlyWeather = hourlyWeather;

  final List<DayWeather> _hourlyWeather;
  @override
  List<DayWeather> get hourlyWeather {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourlyWeather);
  }

  @override
  String toString() {
    return 'HourlyWeatherState.loadSuccess(hourlyWeather: $hourlyWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HourlyWeatherSuccess &&
            const DeepCollectionEquality()
                .equals(other._hourlyWeather, _hourlyWeather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_hourlyWeather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HourlyWeatherSuccessCopyWith<_$_HourlyWeatherSuccess> get copyWith =>
      __$$_HourlyWeatherSuccessCopyWithImpl<_$_HourlyWeatherSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DayWeather> hourlyWeather) loadSuccess,
    required TResult Function() loadInProgress,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(hourlyWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DayWeather> hourlyWeather)? loadSuccess,
    TResult? Function()? loadInProgress,
    TResult? Function()? loadFailure,
  }) {
    return loadSuccess?.call(hourlyWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DayWeather> hourlyWeather)? loadSuccess,
    TResult Function()? loadInProgress,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(hourlyWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HourlyWeatherSuccess value) loadSuccess,
    required TResult Function(_HourlyWeatherInProgress value) loadInProgress,
    required TResult Function(_HourlyWeatherFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HourlyWeatherSuccess value)? loadSuccess,
    TResult? Function(_HourlyWeatherInProgress value)? loadInProgress,
    TResult? Function(_HourlyWeatherFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HourlyWeatherSuccess value)? loadSuccess,
    TResult Function(_HourlyWeatherInProgress value)? loadInProgress,
    TResult Function(_HourlyWeatherFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _HourlyWeatherSuccess implements HourlyWeatherState {
  const factory _HourlyWeatherSuccess(
          {required final List<DayWeather> hourlyWeather}) =
      _$_HourlyWeatherSuccess;

  List<DayWeather> get hourlyWeather;
  @JsonKey(ignore: true)
  _$$_HourlyWeatherSuccessCopyWith<_$_HourlyWeatherSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HourlyWeatherInProgressCopyWith<$Res> {
  factory _$$_HourlyWeatherInProgressCopyWith(_$_HourlyWeatherInProgress value,
          $Res Function(_$_HourlyWeatherInProgress) then) =
      __$$_HourlyWeatherInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HourlyWeatherInProgressCopyWithImpl<$Res>
    extends _$HourlyWeatherStateCopyWithImpl<$Res, _$_HourlyWeatherInProgress>
    implements _$$_HourlyWeatherInProgressCopyWith<$Res> {
  __$$_HourlyWeatherInProgressCopyWithImpl(_$_HourlyWeatherInProgress _value,
      $Res Function(_$_HourlyWeatherInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HourlyWeatherInProgress implements _HourlyWeatherInProgress {
  const _$_HourlyWeatherInProgress();

  @override
  String toString() {
    return 'HourlyWeatherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HourlyWeatherInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DayWeather> hourlyWeather) loadSuccess,
    required TResult Function() loadInProgress,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DayWeather> hourlyWeather)? loadSuccess,
    TResult? Function()? loadInProgress,
    TResult? Function()? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DayWeather> hourlyWeather)? loadSuccess,
    TResult Function()? loadInProgress,
    TResult Function()? loadFailure,
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
    required TResult Function(_HourlyWeatherSuccess value) loadSuccess,
    required TResult Function(_HourlyWeatherInProgress value) loadInProgress,
    required TResult Function(_HourlyWeatherFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HourlyWeatherSuccess value)? loadSuccess,
    TResult? Function(_HourlyWeatherInProgress value)? loadInProgress,
    TResult? Function(_HourlyWeatherFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HourlyWeatherSuccess value)? loadSuccess,
    TResult Function(_HourlyWeatherInProgress value)? loadInProgress,
    TResult Function(_HourlyWeatherFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _HourlyWeatherInProgress implements HourlyWeatherState {
  const factory _HourlyWeatherInProgress() = _$_HourlyWeatherInProgress;
}

/// @nodoc
abstract class _$$_HourlyWeatherFailureCopyWith<$Res> {
  factory _$$_HourlyWeatherFailureCopyWith(_$_HourlyWeatherFailure value,
          $Res Function(_$_HourlyWeatherFailure) then) =
      __$$_HourlyWeatherFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HourlyWeatherFailureCopyWithImpl<$Res>
    extends _$HourlyWeatherStateCopyWithImpl<$Res, _$_HourlyWeatherFailure>
    implements _$$_HourlyWeatherFailureCopyWith<$Res> {
  __$$_HourlyWeatherFailureCopyWithImpl(_$_HourlyWeatherFailure _value,
      $Res Function(_$_HourlyWeatherFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HourlyWeatherFailure implements _HourlyWeatherFailure {
  const _$_HourlyWeatherFailure();

  @override
  String toString() {
    return 'HourlyWeatherState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HourlyWeatherFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DayWeather> hourlyWeather) loadSuccess,
    required TResult Function() loadInProgress,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DayWeather> hourlyWeather)? loadSuccess,
    TResult? Function()? loadInProgress,
    TResult? Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DayWeather> hourlyWeather)? loadSuccess,
    TResult Function()? loadInProgress,
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
    required TResult Function(_HourlyWeatherSuccess value) loadSuccess,
    required TResult Function(_HourlyWeatherInProgress value) loadInProgress,
    required TResult Function(_HourlyWeatherFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HourlyWeatherSuccess value)? loadSuccess,
    TResult? Function(_HourlyWeatherInProgress value)? loadInProgress,
    TResult? Function(_HourlyWeatherFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HourlyWeatherSuccess value)? loadSuccess,
    TResult Function(_HourlyWeatherInProgress value)? loadInProgress,
    TResult Function(_HourlyWeatherFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _HourlyWeatherFailure implements HourlyWeatherState {
  const factory _HourlyWeatherFailure() = _$_HourlyWeatherFailure;
}
