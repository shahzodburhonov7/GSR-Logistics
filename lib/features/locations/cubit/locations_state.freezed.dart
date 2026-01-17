// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationsBuildable {
  bool get loading => throw _privateConstructorUsedError;
  StockPicking? get stockPicking => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationsBuildableCopyWith<LocationsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsBuildableCopyWith<$Res> {
  factory $LocationsBuildableCopyWith(
          LocationsBuildable value, $Res Function(LocationsBuildable) then) =
      _$LocationsBuildableCopyWithImpl<$Res, LocationsBuildable>;
  @useResult
  $Res call({bool loading, StockPicking? stockPicking});

  $StockPickingCopyWith<$Res>? get stockPicking;
}

/// @nodoc
class _$LocationsBuildableCopyWithImpl<$Res, $Val extends LocationsBuildable>
    implements $LocationsBuildableCopyWith<$Res> {
  _$LocationsBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? stockPicking = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      stockPicking: freezed == stockPicking
          ? _value.stockPicking
          : stockPicking // ignore: cast_nullable_to_non_nullable
              as StockPicking?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockPickingCopyWith<$Res>? get stockPicking {
    if (_value.stockPicking == null) {
      return null;
    }

    return $StockPickingCopyWith<$Res>(_value.stockPicking!, (value) {
      return _then(_value.copyWith(stockPicking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationsBuildableImplCopyWith<$Res>
    implements $LocationsBuildableCopyWith<$Res> {
  factory _$$LocationsBuildableImplCopyWith(_$LocationsBuildableImpl value,
          $Res Function(_$LocationsBuildableImpl) then) =
      __$$LocationsBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, StockPicking? stockPicking});

  @override
  $StockPickingCopyWith<$Res>? get stockPicking;
}

/// @nodoc
class __$$LocationsBuildableImplCopyWithImpl<$Res>
    extends _$LocationsBuildableCopyWithImpl<$Res, _$LocationsBuildableImpl>
    implements _$$LocationsBuildableImplCopyWith<$Res> {
  __$$LocationsBuildableImplCopyWithImpl(_$LocationsBuildableImpl _value,
      $Res Function(_$LocationsBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? stockPicking = freezed,
  }) {
    return _then(_$LocationsBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      stockPicking: freezed == stockPicking
          ? _value.stockPicking
          : stockPicking // ignore: cast_nullable_to_non_nullable
              as StockPicking?,
    ));
  }
}

/// @nodoc

class _$LocationsBuildableImpl implements _LocationsBuildable {
  const _$LocationsBuildableImpl({this.loading = false, this.stockPicking});

  @override
  @JsonKey()
  final bool loading;
  @override
  final StockPicking? stockPicking;

  @override
  String toString() {
    return 'LocationsBuildable(loading: $loading, stockPicking: $stockPicking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.stockPicking, stockPicking) ||
                other.stockPicking == stockPicking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, stockPicking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsBuildableImplCopyWith<_$LocationsBuildableImpl> get copyWith =>
      __$$LocationsBuildableImplCopyWithImpl<_$LocationsBuildableImpl>(
          this, _$identity);
}

abstract class _LocationsBuildable implements LocationsBuildable {
  const factory _LocationsBuildable(
      {final bool loading,
      final StockPicking? stockPicking}) = _$LocationsBuildableImpl;

  @override
  bool get loading;
  @override
  StockPicking? get stockPicking;
  @override
  @JsonKey(ignore: true)
  _$$LocationsBuildableImplCopyWith<_$LocationsBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationsListenable {}

/// @nodoc
abstract class $LocationsListenableCopyWith<$Res> {
  factory $LocationsListenableCopyWith(
          LocationsListenable value, $Res Function(LocationsListenable) then) =
      _$LocationsListenableCopyWithImpl<$Res, LocationsListenable>;
}

/// @nodoc
class _$LocationsListenableCopyWithImpl<$Res, $Val extends LocationsListenable>
    implements $LocationsListenableCopyWith<$Res> {
  _$LocationsListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocationsListenableImplCopyWith<$Res> {
  factory _$$LocationsListenableImplCopyWith(_$LocationsListenableImpl value,
          $Res Function(_$LocationsListenableImpl) then) =
      __$$LocationsListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationsListenableImplCopyWithImpl<$Res>
    extends _$LocationsListenableCopyWithImpl<$Res, _$LocationsListenableImpl>
    implements _$$LocationsListenableImplCopyWith<$Res> {
  __$$LocationsListenableImplCopyWithImpl(_$LocationsListenableImpl _value,
      $Res Function(_$LocationsListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationsListenableImpl implements _LocationsListenable {
  const _$LocationsListenableImpl();

  @override
  String toString() {
    return 'LocationsListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LocationsListenable implements LocationsListenable {
  const factory _LocationsListenable() = _$LocationsListenableImpl;
}
