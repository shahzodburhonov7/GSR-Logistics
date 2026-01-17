// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_picking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockPicking _$StockPickingFromJson(Map<String, dynamic> json) {
  return _StockPicking.fromJson(json);
}

/// @nodoc
mixin _$StockPicking {
  String? get jsonrpc => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  List<Result>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockPickingCopyWith<StockPicking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockPickingCopyWith<$Res> {
  factory $StockPickingCopyWith(
          StockPicking value, $Res Function(StockPicking) then) =
      _$StockPickingCopyWithImpl<$Res, StockPicking>;
  @useResult
  $Res call({String? jsonrpc, dynamic id, List<Result>? result});
}

/// @nodoc
class _$StockPickingCopyWithImpl<$Res, $Val extends StockPicking>
    implements $StockPickingCopyWith<$Res> {
  _$StockPickingCopyWithImpl(this._value, this._then);

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
abstract class _$$StockPickingImplCopyWith<$Res>
    implements $StockPickingCopyWith<$Res> {
  factory _$$StockPickingImplCopyWith(
          _$StockPickingImpl value, $Res Function(_$StockPickingImpl) then) =
      __$$StockPickingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? jsonrpc, dynamic id, List<Result>? result});
}

/// @nodoc
class __$$StockPickingImplCopyWithImpl<$Res>
    extends _$StockPickingCopyWithImpl<$Res, _$StockPickingImpl>
    implements _$$StockPickingImplCopyWith<$Res> {
  __$$StockPickingImplCopyWithImpl(
      _$StockPickingImpl _value, $Res Function(_$StockPickingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_$StockPickingImpl(
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
class _$StockPickingImpl implements _StockPicking {
  const _$StockPickingImpl({this.jsonrpc, this.id, final List<Result>? result})
      : _result = result;

  factory _$StockPickingImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockPickingImplFromJson(json);

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
    return 'StockPicking(jsonrpc: $jsonrpc, id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockPickingImpl &&
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
  _$$StockPickingImplCopyWith<_$StockPickingImpl> get copyWith =>
      __$$StockPickingImplCopyWithImpl<_$StockPickingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockPickingImplToJson(
      this,
    );
  }
}

abstract class _StockPicking implements StockPicking {
  const factory _StockPicking(
      {final String? jsonrpc,
      final dynamic id,
      final List<Result>? result}) = _$StockPickingImpl;

  factory _StockPicking.fromJson(Map<String, dynamic> json) =
      _$StockPickingImpl.fromJson;

  @override
  String? get jsonrpc;
  @override
  dynamic get id;
  @override
  List<Result>? get result;
  @override
  @JsonKey(ignore: true)
  _$$StockPickingImplCopyWith<_$StockPickingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'partner_id')
  List<dynamic>? get partnerId => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_date')
  String? get scheduledDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_deadline')
  dynamic get dateDeadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_number')
  dynamic get carNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_arrival_time')
  dynamic get carArrivalTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_uid')
  List<dynamic>? get createUid => throw _privateConstructorUsedError;

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
      String? name,
      @JsonKey(name: 'partner_id') List<dynamic>? partnerId,
      String? state,
      @JsonKey(name: 'scheduled_date') String? scheduledDate,
      @JsonKey(name: 'date_deadline') dynamic dateDeadline,
      @JsonKey(name: 'car_number') dynamic carNumber,
      @JsonKey(name: 'car_arrival_time') dynamic carArrivalTime,
      @JsonKey(name: 'create_uid') List<dynamic>? createUid});
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
    Object? name = freezed,
    Object? partnerId = freezed,
    Object? state = freezed,
    Object? scheduledDate = freezed,
    Object? dateDeadline = freezed,
    Object? carNumber = freezed,
    Object? carArrivalTime = freezed,
    Object? createUid = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerId: freezed == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledDate: freezed == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dateDeadline: freezed == dateDeadline
          ? _value.dateDeadline
          : dateDeadline // ignore: cast_nullable_to_non_nullable
              as dynamic,
      carNumber: freezed == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      carArrivalTime: freezed == carArrivalTime
          ? _value.carArrivalTime
          : carArrivalTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createUid: freezed == createUid
          ? _value.createUid
          : createUid // ignore: cast_nullable_to_non_nullable
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
      String? name,
      @JsonKey(name: 'partner_id') List<dynamic>? partnerId,
      String? state,
      @JsonKey(name: 'scheduled_date') String? scheduledDate,
      @JsonKey(name: 'date_deadline') dynamic dateDeadline,
      @JsonKey(name: 'car_number') dynamic carNumber,
      @JsonKey(name: 'car_arrival_time') dynamic carArrivalTime,
      @JsonKey(name: 'create_uid') List<dynamic>? createUid});
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
    Object? name = freezed,
    Object? partnerId = freezed,
    Object? state = freezed,
    Object? scheduledDate = freezed,
    Object? dateDeadline = freezed,
    Object? carNumber = freezed,
    Object? carArrivalTime = freezed,
    Object? createUid = freezed,
  }) {
    return _then(_$ResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerId: freezed == partnerId
          ? _value._partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledDate: freezed == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dateDeadline: freezed == dateDeadline
          ? _value.dateDeadline
          : dateDeadline // ignore: cast_nullable_to_non_nullable
              as dynamic,
      carNumber: freezed == carNumber
          ? _value.carNumber
          : carNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      carArrivalTime: freezed == carArrivalTime
          ? _value.carArrivalTime
          : carArrivalTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createUid: freezed == createUid
          ? _value._createUid
          : createUid // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'partner_id') final List<dynamic>? partnerId,
      this.state,
      @JsonKey(name: 'scheduled_date') this.scheduledDate,
      @JsonKey(name: 'date_deadline') this.dateDeadline,
      @JsonKey(name: 'car_number') this.carNumber,
      @JsonKey(name: 'car_arrival_time') this.carArrivalTime,
      @JsonKey(name: 'create_uid') final List<dynamic>? createUid})
      : _partnerId = partnerId,
        _createUid = createUid;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<dynamic>? _partnerId;
  @override
  @JsonKey(name: 'partner_id')
  List<dynamic>? get partnerId {
    final value = _partnerId;
    if (value == null) return null;
    if (_partnerId is EqualUnmodifiableListView) return _partnerId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? state;
  @override
  @JsonKey(name: 'scheduled_date')
  final String? scheduledDate;
  @override
  @JsonKey(name: 'date_deadline')
  final dynamic dateDeadline;
  @override
  @JsonKey(name: 'car_number')
  final dynamic carNumber;
  @override
  @JsonKey(name: 'car_arrival_time')
  final dynamic carArrivalTime;
  final List<dynamic>? _createUid;
  @override
  @JsonKey(name: 'create_uid')
  List<dynamic>? get createUid {
    final value = _createUid;
    if (value == null) return null;
    if (_createUid is EqualUnmodifiableListView) return _createUid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(id: $id, name: $name, partnerId: $partnerId, state: $state, scheduledDate: $scheduledDate, dateDeadline: $dateDeadline, carNumber: $carNumber, carArrivalTime: $carArrivalTime, createUid: $createUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._partnerId, _partnerId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.scheduledDate, scheduledDate) ||
                other.scheduledDate == scheduledDate) &&
            const DeepCollectionEquality()
                .equals(other.dateDeadline, dateDeadline) &&
            const DeepCollectionEquality().equals(other.carNumber, carNumber) &&
            const DeepCollectionEquality()
                .equals(other.carArrivalTime, carArrivalTime) &&
            const DeepCollectionEquality()
                .equals(other._createUid, _createUid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_partnerId),
      state,
      scheduledDate,
      const DeepCollectionEquality().hash(dateDeadline),
      const DeepCollectionEquality().hash(carNumber),
      const DeepCollectionEquality().hash(carArrivalTime),
      const DeepCollectionEquality().hash(_createUid));

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
          final String? name,
          @JsonKey(name: 'partner_id') final List<dynamic>? partnerId,
          final String? state,
          @JsonKey(name: 'scheduled_date') final String? scheduledDate,
          @JsonKey(name: 'date_deadline') final dynamic dateDeadline,
          @JsonKey(name: 'car_number') final dynamic carNumber,
          @JsonKey(name: 'car_arrival_time') final dynamic carArrivalTime,
          @JsonKey(name: 'create_uid') final List<dynamic>? createUid}) =
      _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'partner_id')
  List<dynamic>? get partnerId;
  @override
  String? get state;
  @override
  @JsonKey(name: 'scheduled_date')
  String? get scheduledDate;
  @override
  @JsonKey(name: 'date_deadline')
  dynamic get dateDeadline;
  @override
  @JsonKey(name: 'car_number')
  dynamic get carNumber;
  @override
  @JsonKey(name: 'car_arrival_time')
  dynamic get carArrivalTime;
  @override
  @JsonKey(name: 'create_uid')
  List<dynamic>? get createUid;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
