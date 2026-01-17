// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OperationsBuildable {
  bool get loading => throw _privateConstructorUsedError;
  Warehouse? get warehouse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OperationsBuildableCopyWith<OperationsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationsBuildableCopyWith<$Res> {
  factory $OperationsBuildableCopyWith(
          OperationsBuildable value, $Res Function(OperationsBuildable) then) =
      _$OperationsBuildableCopyWithImpl<$Res, OperationsBuildable>;
  @useResult
  $Res call({bool loading, Warehouse? warehouse});

  $WarehouseCopyWith<$Res>? get warehouse;
}

/// @nodoc
class _$OperationsBuildableCopyWithImpl<$Res, $Val extends OperationsBuildable>
    implements $OperationsBuildableCopyWith<$Res> {
  _$OperationsBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? warehouse = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      warehouse: freezed == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WarehouseCopyWith<$Res>? get warehouse {
    if (_value.warehouse == null) {
      return null;
    }

    return $WarehouseCopyWith<$Res>(_value.warehouse!, (value) {
      return _then(_value.copyWith(warehouse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OperationsBuildableImplCopyWith<$Res>
    implements $OperationsBuildableCopyWith<$Res> {
  factory _$$OperationsBuildableImplCopyWith(_$OperationsBuildableImpl value,
          $Res Function(_$OperationsBuildableImpl) then) =
      __$$OperationsBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, Warehouse? warehouse});

  @override
  $WarehouseCopyWith<$Res>? get warehouse;
}

/// @nodoc
class __$$OperationsBuildableImplCopyWithImpl<$Res>
    extends _$OperationsBuildableCopyWithImpl<$Res, _$OperationsBuildableImpl>
    implements _$$OperationsBuildableImplCopyWith<$Res> {
  __$$OperationsBuildableImplCopyWithImpl(_$OperationsBuildableImpl _value,
      $Res Function(_$OperationsBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? warehouse = freezed,
  }) {
    return _then(_$OperationsBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      warehouse: freezed == warehouse
          ? _value.warehouse
          : warehouse // ignore: cast_nullable_to_non_nullable
              as Warehouse?,
    ));
  }
}

/// @nodoc

class _$OperationsBuildableImpl implements _OperationsBuildable {
  const _$OperationsBuildableImpl({this.loading = false, this.warehouse});

  @override
  @JsonKey()
  final bool loading;
  @override
  final Warehouse? warehouse;

  @override
  String toString() {
    return 'OperationsBuildable(loading: $loading, warehouse: $warehouse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationsBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.warehouse, warehouse) ||
                other.warehouse == warehouse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, warehouse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationsBuildableImplCopyWith<_$OperationsBuildableImpl> get copyWith =>
      __$$OperationsBuildableImplCopyWithImpl<_$OperationsBuildableImpl>(
          this, _$identity);
}

abstract class _OperationsBuildable implements OperationsBuildable {
  const factory _OperationsBuildable(
      {final bool loading,
      final Warehouse? warehouse}) = _$OperationsBuildableImpl;

  @override
  bool get loading;
  @override
  Warehouse? get warehouse;
  @override
  @JsonKey(ignore: true)
  _$$OperationsBuildableImplCopyWith<_$OperationsBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OperationsListenable {}

/// @nodoc
abstract class $OperationsListenableCopyWith<$Res> {
  factory $OperationsListenableCopyWith(OperationsListenable value,
          $Res Function(OperationsListenable) then) =
      _$OperationsListenableCopyWithImpl<$Res, OperationsListenable>;
}

/// @nodoc
class _$OperationsListenableCopyWithImpl<$Res,
        $Val extends OperationsListenable>
    implements $OperationsListenableCopyWith<$Res> {
  _$OperationsListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OperationsListenableImplCopyWith<$Res> {
  factory _$$OperationsListenableImplCopyWith(_$OperationsListenableImpl value,
          $Res Function(_$OperationsListenableImpl) then) =
      __$$OperationsListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OperationsListenableImplCopyWithImpl<$Res>
    extends _$OperationsListenableCopyWithImpl<$Res, _$OperationsListenableImpl>
    implements _$$OperationsListenableImplCopyWith<$Res> {
  __$$OperationsListenableImplCopyWithImpl(_$OperationsListenableImpl _value,
      $Res Function(_$OperationsListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OperationsListenableImpl implements _OperationsListenable {
  const _$OperationsListenableImpl();

  @override
  String toString() {
    return 'OperationsListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationsListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _OperationsListenable implements OperationsListenable {
  const factory _OperationsListenable() = _$OperationsListenableImpl;
}
