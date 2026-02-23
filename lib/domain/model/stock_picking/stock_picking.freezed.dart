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
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "partner")
  String? get partner => throw _privateConstructorUsedError;
  @JsonKey(name: "scheduled_date")
  String? get scheduledDate => throw _privateConstructorUsedError;
  @JsonKey(name: "car")
  String? get car => throw _privateConstructorUsedError;
  @JsonKey(name: "car_arrival_time")
  String? get carArrivalTime => throw _privateConstructorUsedError;
  @JsonKey(name: "clients")
  List<String>? get clients => throw _privateConstructorUsedError;
  @JsonKey(name: "track_ids")
  List<String>? get trackIds => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: "display_name") String? displayName,
      int? id,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "partner") String? partner,
      @JsonKey(name: "scheduled_date") String? scheduledDate,
      @JsonKey(name: "car") String? car,
      @JsonKey(name: "car_arrival_time") String? carArrivalTime,
      @JsonKey(name: "clients") List<String>? clients,
      @JsonKey(name: "track_ids") List<String>? trackIds});
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
    Object? displayName = freezed,
    Object? id = freezed,
    Object? state = freezed,
    Object? partner = freezed,
    Object? scheduledDate = freezed,
    Object? car = freezed,
    Object? carArrivalTime = freezed,
    Object? clients = freezed,
    Object? trackIds = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledDate: freezed == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as String?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as String?,
      carArrivalTime: freezed == carArrivalTime
          ? _value.carArrivalTime
          : carArrivalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clients: freezed == clients
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      trackIds: freezed == trackIds
          ? _value.trackIds
          : trackIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
  $Res call(
      {@JsonKey(name: "display_name") String? displayName,
      int? id,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "partner") String? partner,
      @JsonKey(name: "scheduled_date") String? scheduledDate,
      @JsonKey(name: "car") String? car,
      @JsonKey(name: "car_arrival_time") String? carArrivalTime,
      @JsonKey(name: "clients") List<String>? clients,
      @JsonKey(name: "track_ids") List<String>? trackIds});
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
    Object? displayName = freezed,
    Object? id = freezed,
    Object? state = freezed,
    Object? partner = freezed,
    Object? scheduledDate = freezed,
    Object? car = freezed,
    Object? carArrivalTime = freezed,
    Object? clients = freezed,
    Object? trackIds = freezed,
  }) {
    return _then(_$StockPickingImpl(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      partner: freezed == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as String?,
      scheduledDate: freezed == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as String?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as String?,
      carArrivalTime: freezed == carArrivalTime
          ? _value.carArrivalTime
          : carArrivalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      clients: freezed == clients
          ? _value._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      trackIds: freezed == trackIds
          ? _value._trackIds
          : trackIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockPickingImpl implements _StockPicking {
  const _$StockPickingImpl(
      {@JsonKey(name: "display_name") this.displayName,
      this.id,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "partner") this.partner,
      @JsonKey(name: "scheduled_date") this.scheduledDate,
      @JsonKey(name: "car") this.car,
      @JsonKey(name: "car_arrival_time") this.carArrivalTime,
      @JsonKey(name: "clients") final List<String>? clients,
      @JsonKey(name: "track_ids") final List<String>? trackIds})
      : _clients = clients,
        _trackIds = trackIds;

  factory _$StockPickingImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockPickingImplFromJson(json);

  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  final int? id;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "partner")
  final String? partner;
  @override
  @JsonKey(name: "scheduled_date")
  final String? scheduledDate;
  @override
  @JsonKey(name: "car")
  final String? car;
  @override
  @JsonKey(name: "car_arrival_time")
  final String? carArrivalTime;
  final List<String>? _clients;
  @override
  @JsonKey(name: "clients")
  List<String>? get clients {
    final value = _clients;
    if (value == null) return null;
    if (_clients is EqualUnmodifiableListView) return _clients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _trackIds;
  @override
  @JsonKey(name: "track_ids")
  List<String>? get trackIds {
    final value = _trackIds;
    if (value == null) return null;
    if (_trackIds is EqualUnmodifiableListView) return _trackIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StockPicking(displayName: $displayName, id: $id, state: $state, partner: $partner, scheduledDate: $scheduledDate, car: $car, carArrivalTime: $carArrivalTime, clients: $clients, trackIds: $trackIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockPickingImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            (identical(other.scheduledDate, scheduledDate) ||
                other.scheduledDate == scheduledDate) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.carArrivalTime, carArrivalTime) ||
                other.carArrivalTime == carArrivalTime) &&
            const DeepCollectionEquality().equals(other._clients, _clients) &&
            const DeepCollectionEquality().equals(other._trackIds, _trackIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      displayName,
      id,
      state,
      partner,
      scheduledDate,
      car,
      carArrivalTime,
      const DeepCollectionEquality().hash(_clients),
      const DeepCollectionEquality().hash(_trackIds));

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
          {@JsonKey(name: "display_name") final String? displayName,
          final int? id,
          @JsonKey(name: "state") final String? state,
          @JsonKey(name: "partner") final String? partner,
          @JsonKey(name: "scheduled_date") final String? scheduledDate,
          @JsonKey(name: "car") final String? car,
          @JsonKey(name: "car_arrival_time") final String? carArrivalTime,
          @JsonKey(name: "clients") final List<String>? clients,
          @JsonKey(name: "track_ids") final List<String>? trackIds}) =
      _$StockPickingImpl;

  factory _StockPicking.fromJson(Map<String, dynamic> json) =
      _$StockPickingImpl.fromJson;

  @override
  @JsonKey(name: "display_name")
  String? get displayName;
  @override
  int? get id;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "partner")
  String? get partner;
  @override
  @JsonKey(name: "scheduled_date")
  String? get scheduledDate;
  @override
  @JsonKey(name: "car")
  String? get car;
  @override
  @JsonKey(name: "car_arrival_time")
  String? get carArrivalTime;
  @override
  @JsonKey(name: "clients")
  List<String>? get clients;
  @override
  @JsonKey(name: "track_ids")
  List<String>? get trackIds;
  @override
  @JsonKey(ignore: true)
  _$$StockPickingImplCopyWith<_$StockPickingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
