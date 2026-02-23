// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetLine _$GetLineFromJson(Map<String, dynamic> json) {
  return _GetLine.fromJson(json);
}

/// @nodoc
mixin _$GetLine {
  @JsonKey(name: "jsonrpc")
  String? get jsonrpc => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: "result")
  List<Result>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetLineCopyWith<GetLine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLineCopyWith<$Res> {
  factory $GetLineCopyWith(GetLine value, $Res Function(GetLine) then) =
      _$GetLineCopyWithImpl<$Res, GetLine>;
  @useResult
  $Res call(
      {@JsonKey(name: "jsonrpc") String? jsonrpc,
      @JsonKey(name: "id") dynamic id,
      @JsonKey(name: "result") List<Result>? result});
}

/// @nodoc
class _$GetLineCopyWithImpl<$Res, $Val extends GetLine>
    implements $GetLineCopyWith<$Res> {
  _$GetLineCopyWithImpl(this._value, this._then);

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
abstract class _$$GetLineImplCopyWith<$Res> implements $GetLineCopyWith<$Res> {
  factory _$$GetLineImplCopyWith(
          _$GetLineImpl value, $Res Function(_$GetLineImpl) then) =
      __$$GetLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "jsonrpc") String? jsonrpc,
      @JsonKey(name: "id") dynamic id,
      @JsonKey(name: "result") List<Result>? result});
}

/// @nodoc
class __$$GetLineImplCopyWithImpl<$Res>
    extends _$GetLineCopyWithImpl<$Res, _$GetLineImpl>
    implements _$$GetLineImplCopyWith<$Res> {
  __$$GetLineImplCopyWithImpl(
      _$GetLineImpl _value, $Res Function(_$GetLineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_$GetLineImpl(
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
class _$GetLineImpl implements _GetLine {
  const _$GetLineImpl(
      {@JsonKey(name: "jsonrpc") this.jsonrpc,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "result") final List<Result>? result})
      : _result = result;

  factory _$GetLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetLineImplFromJson(json);

  @override
  @JsonKey(name: "jsonrpc")
  final String? jsonrpc;
  @override
  @JsonKey(name: "id")
  final dynamic id;
  final List<Result>? _result;
  @override
  @JsonKey(name: "result")
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetLine(jsonrpc: $jsonrpc, id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLineImpl &&
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
  _$$GetLineImplCopyWith<_$GetLineImpl> get copyWith =>
      __$$GetLineImplCopyWithImpl<_$GetLineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetLineImplToJson(
      this,
    );
  }
}

abstract class _GetLine implements GetLine {
  const factory _GetLine(
      {@JsonKey(name: "jsonrpc") final String? jsonrpc,
      @JsonKey(name: "id") final dynamic id,
      @JsonKey(name: "result") final List<Result>? result}) = _$GetLineImpl;

  factory _GetLine.fromJson(Map<String, dynamic> json) = _$GetLineImpl.fromJson;

  @override
  @JsonKey(name: "jsonrpc")
  String? get jsonrpc;
  @override
  @JsonKey(name: "id")
  dynamic get id;
  @override
  @JsonKey(name: "result")
  List<Result>? get result;
  @override
  @JsonKey(ignore: true)
  _$$GetLineImplCopyWith<_$GetLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  List<dynamic>? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "track_id")
  String? get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: "client_id")
  List<dynamic>? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: "pick_qty")
  int? get pickQty => throw _privateConstructorUsedError;
  @JsonKey(name: "box_volume")
  double? get boxVolume => throw _privateConstructorUsedError;
  @JsonKey(name: "box_weight")
  int? get boxWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "logistic_photo")
  String? get logisticPhoto => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "product_id") List<dynamic>? productId,
      @JsonKey(name: "track_id") String? trackId,
      @JsonKey(name: "client_id") List<dynamic>? clientId,
      @JsonKey(name: "pick_qty") int? pickQty,
      @JsonKey(name: "box_volume") double? boxVolume,
      @JsonKey(name: "box_weight") int? boxWeight,
      @JsonKey(name: "logistic_photo") String? logisticPhoto});
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
    Object? productId = freezed,
    Object? trackId = freezed,
    Object? clientId = freezed,
    Object? pickQty = freezed,
    Object? boxVolume = freezed,
    Object? boxWeight = freezed,
    Object? logisticPhoto = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pickQty: freezed == pickQty
          ? _value.pickQty
          : pickQty // ignore: cast_nullable_to_non_nullable
              as int?,
      boxVolume: freezed == boxVolume
          ? _value.boxVolume
          : boxVolume // ignore: cast_nullable_to_non_nullable
              as double?,
      boxWeight: freezed == boxWeight
          ? _value.boxWeight
          : boxWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      logisticPhoto: freezed == logisticPhoto
          ? _value.logisticPhoto
          : logisticPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "product_id") List<dynamic>? productId,
      @JsonKey(name: "track_id") String? trackId,
      @JsonKey(name: "client_id") List<dynamic>? clientId,
      @JsonKey(name: "pick_qty") int? pickQty,
      @JsonKey(name: "box_volume") double? boxVolume,
      @JsonKey(name: "box_weight") int? boxWeight,
      @JsonKey(name: "logistic_photo") String? logisticPhoto});
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
    Object? productId = freezed,
    Object? trackId = freezed,
    Object? clientId = freezed,
    Object? pickQty = freezed,
    Object? boxVolume = freezed,
    Object? boxWeight = freezed,
    Object? logisticPhoto = freezed,
  }) {
    return _then(_$ResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value._productId
          : productId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value._clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pickQty: freezed == pickQty
          ? _value.pickQty
          : pickQty // ignore: cast_nullable_to_non_nullable
              as int?,
      boxVolume: freezed == boxVolume
          ? _value.boxVolume
          : boxVolume // ignore: cast_nullable_to_non_nullable
              as double?,
      boxWeight: freezed == boxWeight
          ? _value.boxWeight
          : boxWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      logisticPhoto: freezed == logisticPhoto
          ? _value.logisticPhoto
          : logisticPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "product_id") final List<dynamic>? productId,
      @JsonKey(name: "track_id") this.trackId,
      @JsonKey(name: "client_id") final List<dynamic>? clientId,
      @JsonKey(name: "pick_qty") this.pickQty,
      @JsonKey(name: "box_volume") this.boxVolume,
      @JsonKey(name: "box_weight") this.boxWeight,
      @JsonKey(name: "logistic_photo") this.logisticPhoto})
      : _productId = productId,
        _clientId = clientId;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  final List<dynamic>? _productId;
  @override
  @JsonKey(name: "product_id")
  List<dynamic>? get productId {
    final value = _productId;
    if (value == null) return null;
    if (_productId is EqualUnmodifiableListView) return _productId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "track_id")
  final String? trackId;
  final List<dynamic>? _clientId;
  @override
  @JsonKey(name: "client_id")
  List<dynamic>? get clientId {
    final value = _clientId;
    if (value == null) return null;
    if (_clientId is EqualUnmodifiableListView) return _clientId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "pick_qty")
  final int? pickQty;
  @override
  @JsonKey(name: "box_volume")
  final double? boxVolume;
  @override
  @JsonKey(name: "box_weight")
  final int? boxWeight;
  @override
  @JsonKey(name: "logistic_photo")
  final String? logisticPhoto;

  @override
  String toString() {
    return 'Result(id: $id, productId: $productId, trackId: $trackId, clientId: $clientId, pickQty: $pickQty, boxVolume: $boxVolume, boxWeight: $boxWeight, logisticPhoto: $logisticPhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._productId, _productId) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            const DeepCollectionEquality().equals(other._clientId, _clientId) &&
            (identical(other.pickQty, pickQty) || other.pickQty == pickQty) &&
            (identical(other.boxVolume, boxVolume) ||
                other.boxVolume == boxVolume) &&
            (identical(other.boxWeight, boxWeight) ||
                other.boxWeight == boxWeight) &&
            (identical(other.logisticPhoto, logisticPhoto) ||
                other.logisticPhoto == logisticPhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_productId),
      trackId,
      const DeepCollectionEquality().hash(_clientId),
      pickQty,
      boxVolume,
      boxWeight,
      logisticPhoto);

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
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "product_id") final List<dynamic>? productId,
          @JsonKey(name: "track_id") final String? trackId,
          @JsonKey(name: "client_id") final List<dynamic>? clientId,
          @JsonKey(name: "pick_qty") final int? pickQty,
          @JsonKey(name: "box_volume") final double? boxVolume,
          @JsonKey(name: "box_weight") final int? boxWeight,
          @JsonKey(name: "logistic_photo") final String? logisticPhoto}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "product_id")
  List<dynamic>? get productId;
  @override
  @JsonKey(name: "track_id")
  String? get trackId;
  @override
  @JsonKey(name: "client_id")
  List<dynamic>? get clientId;
  @override
  @JsonKey(name: "pick_qty")
  int? get pickQty;
  @override
  @JsonKey(name: "box_volume")
  double? get boxVolume;
  @override
  @JsonKey(name: "box_weight")
  int? get boxWeight;
  @override
  @JsonKey(name: "logistic_photo")
  String? get logisticPhoto;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
