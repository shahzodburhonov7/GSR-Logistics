// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScannerBuildable {
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScannerBuildableCopyWith<ScannerBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerBuildableCopyWith<$Res> {
  factory $ScannerBuildableCopyWith(
          ScannerBuildable value, $Res Function(ScannerBuildable) then) =
      _$ScannerBuildableCopyWithImpl<$Res, ScannerBuildable>;
  @useResult
  $Res call({bool loading});
}

/// @nodoc
class _$ScannerBuildableCopyWithImpl<$Res, $Val extends ScannerBuildable>
    implements $ScannerBuildableCopyWith<$Res> {
  _$ScannerBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScannerBuildableImplCopyWith<$Res>
    implements $ScannerBuildableCopyWith<$Res> {
  factory _$$ScannerBuildableImplCopyWith(_$ScannerBuildableImpl value,
          $Res Function(_$ScannerBuildableImpl) then) =
      __$$ScannerBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading});
}

/// @nodoc
class __$$ScannerBuildableImplCopyWithImpl<$Res>
    extends _$ScannerBuildableCopyWithImpl<$Res, _$ScannerBuildableImpl>
    implements _$$ScannerBuildableImplCopyWith<$Res> {
  __$$ScannerBuildableImplCopyWithImpl(_$ScannerBuildableImpl _value,
      $Res Function(_$ScannerBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_$ScannerBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ScannerBuildableImpl implements _ScannerBuildable {
  const _$ScannerBuildableImpl({this.loading = false});

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'ScannerBuildable(loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannerBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannerBuildableImplCopyWith<_$ScannerBuildableImpl> get copyWith =>
      __$$ScannerBuildableImplCopyWithImpl<_$ScannerBuildableImpl>(
          this, _$identity);
}

abstract class _ScannerBuildable implements ScannerBuildable {
  const factory _ScannerBuildable({final bool loading}) =
      _$ScannerBuildableImpl;

  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$ScannerBuildableImplCopyWith<_$ScannerBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScannerListenable {
  ScannerEffect get effect => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScannerListenableCopyWith<ScannerListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerListenableCopyWith<$Res> {
  factory $ScannerListenableCopyWith(
          ScannerListenable value, $Res Function(ScannerListenable) then) =
      _$ScannerListenableCopyWithImpl<$Res, ScannerListenable>;
  @useResult
  $Res call({ScannerEffect effect, String? errorText});
}

/// @nodoc
class _$ScannerListenableCopyWithImpl<$Res, $Val extends ScannerListenable>
    implements $ScannerListenableCopyWith<$Res> {
  _$ScannerListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as ScannerEffect,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScannerListenableImplCopyWith<$Res>
    implements $ScannerListenableCopyWith<$Res> {
  factory _$$ScannerListenableImplCopyWith(_$ScannerListenableImpl value,
          $Res Function(_$ScannerListenableImpl) then) =
      __$$ScannerListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ScannerEffect effect, String? errorText});
}

/// @nodoc
class __$$ScannerListenableImplCopyWithImpl<$Res>
    extends _$ScannerListenableCopyWithImpl<$Res, _$ScannerListenableImpl>
    implements _$$ScannerListenableImplCopyWith<$Res> {
  __$$ScannerListenableImplCopyWithImpl(_$ScannerListenableImpl _value,
      $Res Function(_$ScannerListenableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = null,
    Object? errorText = freezed,
  }) {
    return _then(_$ScannerListenableImpl(
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as ScannerEffect,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ScannerListenableImpl implements _ScannerListenable {
  const _$ScannerListenableImpl({required this.effect, this.errorText});

  @override
  final ScannerEffect effect;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'ScannerListenable(effect: $effect, errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannerListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, effect, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannerListenableImplCopyWith<_$ScannerListenableImpl> get copyWith =>
      __$$ScannerListenableImplCopyWithImpl<_$ScannerListenableImpl>(
          this, _$identity);
}

abstract class _ScannerListenable implements ScannerListenable {
  const factory _ScannerListenable(
      {required final ScannerEffect effect,
      final String? errorText}) = _$ScannerListenableImpl;

  @override
  ScannerEffect get effect;
  @override
  String? get errorText;
  @override
  @JsonKey(ignore: true)
  _$$ScannerListenableImplCopyWith<_$ScannerListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
