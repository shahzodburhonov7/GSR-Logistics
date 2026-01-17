// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductsList _$ProductsListFromJson(Map<String, dynamic> json) {
  return _ProductsList.fromJson(json);
}

/// @nodoc
mixin _$ProductsList {
  String? get jsonrpc => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  List<Result>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsListCopyWith<ProductsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsListCopyWith<$Res> {
  factory $ProductsListCopyWith(
          ProductsList value, $Res Function(ProductsList) then) =
      _$ProductsListCopyWithImpl<$Res, ProductsList>;
  @useResult
  $Res call({String? jsonrpc, dynamic id, List<Result>? result});
}

/// @nodoc
class _$ProductsListCopyWithImpl<$Res, $Val extends ProductsList>
    implements $ProductsListCopyWith<$Res> {
  _$ProductsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsListImplCopyWith<$Res>
    implements $ProductsListCopyWith<$Res> {
  factory _$$ProductsListImplCopyWith(
          _$ProductsListImpl value, $Res Function(_$ProductsListImpl) then) =
      __$$ProductsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, dynamic id, List<Result>? result});
}

/// @nodoc
class __$$ProductsListImplCopyWithImpl<$Res>
    extends _$ProductsListCopyWithImpl<$Res, _$ProductsListImpl>
    implements _$$ProductsListImplCopyWith<$Res> {
  __$$ProductsListImplCopyWithImpl(
      _$ProductsListImpl _value, $Res Function(_$ProductsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ProductsListImpl(
      jsonrpc: freezed == jsonrpc
          ? _value.jsonrpc
          : jsonrpc // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsListImpl implements _ProductsList {
  const _$ProductsListImpl({this.jsonrpc, this.id, final List<Result>? result})
      : _result = result;

  factory _$ProductsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsListImplFromJson(json);

  @override
  final String? jsonrpc;
  @override
  final dynamic id;
  final List<Result>? _result;
  @override
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductsList(jsonrpc: $jsonrpc, id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsListImpl &&
            (identical(other.jsonrpc, jsonrpc) || other.jsonrpc == jsonrpc) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      jsonrpc,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsListImplCopyWith<_$ProductsListImpl> get copyWith =>
      __$$ProductsListImplCopyWithImpl<_$ProductsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsListImplToJson(
      this,
    );
  }
}

abstract class _ProductsList implements ProductsList {
  const factory _ProductsList(
      {final String? jsonrpc,
      final dynamic id,
      final List<Result>? result}) = _$ProductsListImpl;

  factory _ProductsList.fromJson(Map<String, dynamic> json) =
      _$ProductsListImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  dynamic get id;
  @override
  List<Result>? get result;
  @override
  @JsonKey(ignore: true)
  _$$ProductsListImplCopyWith<_$ProductsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get product_id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'lot_id', fromJson: _many2oneFromJson)
  List<dynamic>? get lot_id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get location_id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get location_dest_id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get create_uid => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get employee_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(fromJson: _many2oneFromJson) List<dynamic>? product_id,
      int? quantity,
      @JsonKey(name: 'lot_id', fromJson: _many2oneFromJson)
      List<dynamic>? lot_id,
      @JsonKey(fromJson: _many2oneFromJson) List<dynamic>? location_id,
      @JsonKey(fromJson: _many2oneFromJson) List<dynamic>? location_dest_id,
      @JsonKey(fromJson: _many2oneFromJson) List<dynamic>? create_uid,
      @JsonKey(fromJson: _many2oneFromJson) List<dynamic>? employee_id});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_id = freezed,
    Object? quantity = freezed,
    Object? lot_id = freezed,
    Object? location_id = freezed,
    Object? location_dest_id = freezed,
    Object? create_uid = freezed,
    Object? employee_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      lot_id: freezed == lot_id
          ? _value.lot_id
          : lot_id // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      location_id: freezed == location_id
          ? _value.location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      location_dest_id: freezed == location_dest_id
          ? _value.location_dest_id
          : location_dest_id // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      create_uid: freezed == create_uid
          ? _value.create_uid
          : create_uid // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      employee_id: freezed == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(fromJson: _many2oneFromJson) List<dynamic>? product_id,
      int? quantity,
      @JsonKey(name: 'lot_id', fromJson: _many2oneFromJson)
      List<dynamic>? lot_id,
      @JsonKey(fromJson: _many2oneFromJson) List<dynamic>? location_id,
      @JsonKey(fromJson: _many2oneFromJson) List<dynamic>? location_dest_id,
      @JsonKey(fromJson: _many2oneFromJson) List<dynamic>? create_uid,
      @JsonKey(fromJson: _many2oneFromJson) List<dynamic>? employee_id});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_id = freezed,
    Object? quantity = freezed,
    Object? lot_id = freezed,
    Object? location_id = freezed,
    Object? location_dest_id = freezed,
    Object? create_uid = freezed,
    Object? employee_id = freezed,
  }) {
    return _then(_$ResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value._product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      lot_id: freezed == lot_id
          ? _value._lot_id
          : lot_id // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      location_id: freezed == location_id
          ? _value._location_id
          : location_id // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      location_dest_id: freezed == location_dest_id
          ? _value._location_dest_id
          : location_dest_id // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      create_uid: freezed == create_uid
          ? _value._create_uid
          : create_uid // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      employee_id: freezed == employee_id
          ? _value._employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.id,
      @JsonKey(fromJson: _many2oneFromJson) final List<dynamic>? product_id,
      this.quantity,
      @JsonKey(name: 'lot_id', fromJson: _many2oneFromJson)
      final List<dynamic>? lot_id,
      @JsonKey(fromJson: _many2oneFromJson) final List<dynamic>? location_id,
      @JsonKey(fromJson: _many2oneFromJson)
      final List<dynamic>? location_dest_id,
      @JsonKey(fromJson: _many2oneFromJson) final List<dynamic>? create_uid,
      @JsonKey(fromJson: _many2oneFromJson) final List<dynamic>? employee_id})
      : _product_id = product_id,
        _lot_id = lot_id,
        _location_id = location_id,
        _location_dest_id = location_dest_id,
        _create_uid = create_uid,
        _employee_id = employee_id;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? id;
  final List<dynamic>? _product_id;
  @override
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get product_id {
    final value = _product_id;
    if (value == null) return null;
    if (_product_id is EqualUnmodifiableListView) return _product_id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? quantity;
  final List<dynamic>? _lot_id;
  @override
  @JsonKey(name: 'lot_id', fromJson: _many2oneFromJson)
  List<dynamic>? get lot_id {
    final value = _lot_id;
    if (value == null) return null;
    if (_lot_id is EqualUnmodifiableListView) return _lot_id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _location_id;
  @override
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get location_id {
    final value = _location_id;
    if (value == null) return null;
    if (_location_id is EqualUnmodifiableListView) return _location_id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _location_dest_id;
  @override
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get location_dest_id {
    final value = _location_dest_id;
    if (value == null) return null;
    if (_location_dest_id is EqualUnmodifiableListView)
      return _location_dest_id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _create_uid;
  @override
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get create_uid {
    final value = _create_uid;
    if (value == null) return null;
    if (_create_uid is EqualUnmodifiableListView) return _create_uid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _employee_id;
  @override
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get employee_id {
    final value = _employee_id;
    if (value == null) return null;
    if (_employee_id is EqualUnmodifiableListView) return _employee_id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(id: $id, product_id: $product_id, quantity: $quantity, lot_id: $lot_id, location_id: $location_id, location_dest_id: $location_dest_id, create_uid: $create_uid, employee_id: $employee_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._product_id, _product_id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality().equals(other._lot_id, _lot_id) &&
            const DeepCollectionEquality()
                .equals(other._location_id, _location_id) &&
            const DeepCollectionEquality()
                .equals(other._location_dest_id, _location_dest_id) &&
            const DeepCollectionEquality()
                .equals(other._create_uid, _create_uid) &&
            const DeepCollectionEquality()
                .equals(other._employee_id, _employee_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_product_id),
      quantity,
      const DeepCollectionEquality().hash(_lot_id),
      const DeepCollectionEquality().hash(_location_id),
      const DeepCollectionEquality().hash(_location_dest_id),
      const DeepCollectionEquality().hash(_create_uid),
      const DeepCollectionEquality().hash(_employee_id));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? id,
      @JsonKey(fromJson: _many2oneFromJson) final List<dynamic>? product_id,
      final int? quantity,
      @JsonKey(name: 'lot_id', fromJson: _many2oneFromJson)
      final List<dynamic>? lot_id,
      @JsonKey(fromJson: _many2oneFromJson) final List<dynamic>? location_id,
      @JsonKey(fromJson: _many2oneFromJson)
      final List<dynamic>? location_dest_id,
      @JsonKey(fromJson: _many2oneFromJson) final List<dynamic>? create_uid,
      @JsonKey(fromJson: _many2oneFromJson)
      final List<dynamic>? employee_id}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get product_id;
  @override
  int? get quantity;
  @override
  @JsonKey(name: 'lot_id', fromJson: _many2oneFromJson)
  List<dynamic>? get lot_id;
  @override
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get location_id;
  @override
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get location_dest_id;
  @override
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get create_uid;
  @override
  @JsonKey(fromJson: _many2oneFromJson)
  List<dynamic>? get employee_id;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
