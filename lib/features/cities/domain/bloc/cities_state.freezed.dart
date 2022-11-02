// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CitiesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City? city) loadSuccess,
    required TResult Function() loadInProgress,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City? city)? loadSuccess,
    TResult? Function()? loadInProgress,
    TResult? Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City? city)? loadSuccess,
    TResult Function()? loadInProgress,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesSuccess value) loadSuccess,
    required TResult Function(_CitiesInProgress value) loadInProgress,
    required TResult Function(_CitiesFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesSuccess value)? loadSuccess,
    TResult? Function(_CitiesInProgress value)? loadInProgress,
    TResult? Function(_CitiesFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSuccess value)? loadSuccess,
    TResult Function(_CitiesInProgress value)? loadInProgress,
    TResult Function(_CitiesFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesStateCopyWith<$Res> {
  factory $CitiesStateCopyWith(
          CitiesState value, $Res Function(CitiesState) then) =
      _$CitiesStateCopyWithImpl<$Res, CitiesState>;
}

/// @nodoc
class _$CitiesStateCopyWithImpl<$Res, $Val extends CitiesState>
    implements $CitiesStateCopyWith<$Res> {
  _$CitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CitiesSuccessCopyWith<$Res> {
  factory _$$_CitiesSuccessCopyWith(
          _$_CitiesSuccess value, $Res Function(_$_CitiesSuccess) then) =
      __$$_CitiesSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({City? city});
}

/// @nodoc
class __$$_CitiesSuccessCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res, _$_CitiesSuccess>
    implements _$$_CitiesSuccessCopyWith<$Res> {
  __$$_CitiesSuccessCopyWithImpl(
      _$_CitiesSuccess _value, $Res Function(_$_CitiesSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_$_CitiesSuccess(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }
}

/// @nodoc

class _$_CitiesSuccess implements _CitiesSuccess {
  const _$_CitiesSuccess({required this.city});

  @override
  final City? city;

  @override
  String toString() {
    return 'CitiesState.loadSuccess(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesSuccess &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesSuccessCopyWith<_$_CitiesSuccess> get copyWith =>
      __$$_CitiesSuccessCopyWithImpl<_$_CitiesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City? city) loadSuccess,
    required TResult Function() loadInProgress,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City? city)? loadSuccess,
    TResult? Function()? loadInProgress,
    TResult? Function()? loadFailure,
  }) {
    return loadSuccess?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City? city)? loadSuccess,
    TResult Function()? loadInProgress,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesSuccess value) loadSuccess,
    required TResult Function(_CitiesInProgress value) loadInProgress,
    required TResult Function(_CitiesFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesSuccess value)? loadSuccess,
    TResult? Function(_CitiesInProgress value)? loadInProgress,
    TResult? Function(_CitiesFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSuccess value)? loadSuccess,
    TResult Function(_CitiesInProgress value)? loadInProgress,
    TResult Function(_CitiesFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _CitiesSuccess implements CitiesState {
  const factory _CitiesSuccess({required final City? city}) = _$_CitiesSuccess;

  City? get city;
  @JsonKey(ignore: true)
  _$$_CitiesSuccessCopyWith<_$_CitiesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CitiesInProgressCopyWith<$Res> {
  factory _$$_CitiesInProgressCopyWith(
          _$_CitiesInProgress value, $Res Function(_$_CitiesInProgress) then) =
      __$$_CitiesInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CitiesInProgressCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res, _$_CitiesInProgress>
    implements _$$_CitiesInProgressCopyWith<$Res> {
  __$$_CitiesInProgressCopyWithImpl(
      _$_CitiesInProgress _value, $Res Function(_$_CitiesInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CitiesInProgress implements _CitiesInProgress {
  const _$_CitiesInProgress();

  @override
  String toString() {
    return 'CitiesState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CitiesInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City? city) loadSuccess,
    required TResult Function() loadInProgress,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City? city)? loadSuccess,
    TResult? Function()? loadInProgress,
    TResult? Function()? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City? city)? loadSuccess,
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
    required TResult Function(_CitiesSuccess value) loadSuccess,
    required TResult Function(_CitiesInProgress value) loadInProgress,
    required TResult Function(_CitiesFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesSuccess value)? loadSuccess,
    TResult? Function(_CitiesInProgress value)? loadInProgress,
    TResult? Function(_CitiesFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSuccess value)? loadSuccess,
    TResult Function(_CitiesInProgress value)? loadInProgress,
    TResult Function(_CitiesFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _CitiesInProgress implements CitiesState {
  const factory _CitiesInProgress() = _$_CitiesInProgress;
}

/// @nodoc
abstract class _$$_CitiesFailureCopyWith<$Res> {
  factory _$$_CitiesFailureCopyWith(
          _$_CitiesFailure value, $Res Function(_$_CitiesFailure) then) =
      __$$_CitiesFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CitiesFailureCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res, _$_CitiesFailure>
    implements _$$_CitiesFailureCopyWith<$Res> {
  __$$_CitiesFailureCopyWithImpl(
      _$_CitiesFailure _value, $Res Function(_$_CitiesFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CitiesFailure implements _CitiesFailure {
  const _$_CitiesFailure();

  @override
  String toString() {
    return 'CitiesState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CitiesFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(City? city) loadSuccess,
    required TResult Function() loadInProgress,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(City? city)? loadSuccess,
    TResult? Function()? loadInProgress,
    TResult? Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(City? city)? loadSuccess,
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
    required TResult Function(_CitiesSuccess value) loadSuccess,
    required TResult Function(_CitiesInProgress value) loadInProgress,
    required TResult Function(_CitiesFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesSuccess value)? loadSuccess,
    TResult? Function(_CitiesInProgress value)? loadInProgress,
    TResult? Function(_CitiesFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesSuccess value)? loadSuccess,
    TResult Function(_CitiesInProgress value)? loadInProgress,
    TResult Function(_CitiesFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _CitiesFailure implements CitiesState {
  const factory _CitiesFailure() = _$_CitiesFailure;
}
