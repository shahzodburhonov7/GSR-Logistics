// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryBuildable {
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryBuildableCopyWith<CategoryBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBuildableCopyWith<$Res> {
  factory $CategoryBuildableCopyWith(
          CategoryBuildable value, $Res Function(CategoryBuildable) then) =
      _$CategoryBuildableCopyWithImpl<$Res, CategoryBuildable>;
  @useResult
  $Res call({bool loading});
}

/// @nodoc
class _$CategoryBuildableCopyWithImpl<$Res, $Val extends CategoryBuildable>
    implements $CategoryBuildableCopyWith<$Res> {
  _$CategoryBuildableCopyWithImpl(this._value, this._then);

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
abstract class _$$CategoryBuildableImplCopyWith<$Res>
    implements $CategoryBuildableCopyWith<$Res> {
  factory _$$CategoryBuildableImplCopyWith(_$CategoryBuildableImpl value,
          $Res Function(_$CategoryBuildableImpl) then) =
      __$$CategoryBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading});
}

/// @nodoc
class __$$CategoryBuildableImplCopyWithImpl<$Res>
    extends _$CategoryBuildableCopyWithImpl<$Res, _$CategoryBuildableImpl>
    implements _$$CategoryBuildableImplCopyWith<$Res> {
  __$$CategoryBuildableImplCopyWithImpl(_$CategoryBuildableImpl _value,
      $Res Function(_$CategoryBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_$CategoryBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CategoryBuildableImpl implements _CategoryBuildable {
  const _$CategoryBuildableImpl({this.loading = false});

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'CategoryBuildable(loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryBuildableImplCopyWith<_$CategoryBuildableImpl> get copyWith =>
      __$$CategoryBuildableImplCopyWithImpl<_$CategoryBuildableImpl>(
          this, _$identity);
}

abstract class _CategoryBuildable implements CategoryBuildable {
  const factory _CategoryBuildable({final bool loading}) =
      _$CategoryBuildableImpl;

  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$CategoryBuildableImplCopyWith<_$CategoryBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryListenable {}

/// @nodoc
abstract class $CategoryListenableCopyWith<$Res> {
  factory $CategoryListenableCopyWith(
          CategoryListenable value, $Res Function(CategoryListenable) then) =
      _$CategoryListenableCopyWithImpl<$Res, CategoryListenable>;
}

/// @nodoc
class _$CategoryListenableCopyWithImpl<$Res, $Val extends CategoryListenable>
    implements $CategoryListenableCopyWith<$Res> {
  _$CategoryListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoryListenableImplCopyWith<$Res> {
  factory _$$CategoryListenableImplCopyWith(_$CategoryListenableImpl value,
          $Res Function(_$CategoryListenableImpl) then) =
      __$$CategoryListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryListenableImplCopyWithImpl<$Res>
    extends _$CategoryListenableCopyWithImpl<$Res, _$CategoryListenableImpl>
    implements _$$CategoryListenableImplCopyWith<$Res> {
  __$$CategoryListenableImplCopyWithImpl(_$CategoryListenableImpl _value,
      $Res Function(_$CategoryListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryListenableImpl implements _CategoryListenable {
  const _$CategoryListenableImpl();

  @override
  String toString() {
    return 'CategoryListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CategoryListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _CategoryListenable implements CategoryListenable {
  const factory _CategoryListenable() = _$CategoryListenableImpl;
}
