// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_plans.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPlans _$GetPlansFromJson(Map<String, dynamic> json) {
  return _GetPlans.fromJson(json);
}

/// @nodoc
mixin _$GetPlans {
  @JsonKey(name: "jsonrpc")
  String? get jsonrpc => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: "result")
  List<Result>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPlansCopyWith<GetPlans> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPlansCopyWith<$Res> {
  factory $GetPlansCopyWith(GetPlans value, $Res Function(GetPlans) then) =
      _$GetPlansCopyWithImpl<$Res, GetPlans>;
  @useResult
  $Res call(
      {@JsonKey(name: "jsonrpc") String? jsonrpc,
      @JsonKey(name: "id") dynamic id,
      @JsonKey(name: "result") List<Result>? result});
}

/// @nodoc
class _$GetPlansCopyWithImpl<$Res, $Val extends GetPlans>
    implements $GetPlansCopyWith<$Res> {
  _$GetPlansCopyWithImpl(this._value, this._then);

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
abstract class _$$GetPlansImplCopyWith<$Res>
    implements $GetPlansCopyWith<$Res> {
  factory _$$GetPlansImplCopyWith(
          _$GetPlansImpl value, $Res Function(_$GetPlansImpl) then) =
      __$$GetPlansImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "jsonrpc") String? jsonrpc,
      @JsonKey(name: "id") dynamic id,
      @JsonKey(name: "result") List<Result>? result});
}

/// @nodoc
class __$$GetPlansImplCopyWithImpl<$Res>
    extends _$GetPlansCopyWithImpl<$Res, _$GetPlansImpl>
    implements _$$GetPlansImplCopyWith<$Res> {
  __$$GetPlansImplCopyWithImpl(
      _$GetPlansImpl _value, $Res Function(_$GetPlansImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonrpc = freezed,
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_$GetPlansImpl(
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
class _$GetPlansImpl implements _GetPlans {
  const _$GetPlansImpl(
      {@JsonKey(name: "jsonrpc") this.jsonrpc,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "result") final List<Result>? result})
      : _result = result;

  factory _$GetPlansImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPlansImplFromJson(json);

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
    return 'GetPlans(jsonrpc: $jsonrpc, id: $id, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPlansImpl &&
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
  _$$GetPlansImplCopyWith<_$GetPlansImpl> get copyWith =>
      __$$GetPlansImplCopyWithImpl<_$GetPlansImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPlansImplToJson(
      this,
    );
  }
}

abstract class _GetPlans implements GetPlans {
  const factory _GetPlans(
      {@JsonKey(name: "jsonrpc") final String? jsonrpc,
      @JsonKey(name: "id") final dynamic id,
      @JsonKey(name: "result") final List<Result>? result}) = _$GetPlansImpl;

  factory _GetPlans.fromJson(Map<String, dynamic> json) =
      _$GetPlansImpl.fromJson;

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
  _$$GetPlansImplCopyWith<_$GetPlansImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "create_uid")
  List<dynamic>? get createUid => throw _privateConstructorUsedError;
  @JsonKey(name: "date_plan")
  String? get datePlan => throw _privateConstructorUsedError;
  @JsonKey(name: "source_warehouse_id")
  List<dynamic>? get sourceWarehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: "dest_warehouse_id")
  List<dynamic>? get destWarehouseId => throw _privateConstructorUsedError;
  @JsonKey(name: "create_date")
  String? get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: "responsible_user_id")
  List<dynamic>? get responsibleUserId => throw _privateConstructorUsedError;

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
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "create_uid") List<dynamic>? createUid,
      @JsonKey(name: "date_plan") String? datePlan,
      @JsonKey(name: "source_warehouse_id") List<dynamic>? sourceWarehouseId,
      @JsonKey(name: "dest_warehouse_id") List<dynamic>? destWarehouseId,
      @JsonKey(name: "create_date") String? createDate,
      @JsonKey(name: "responsible_user_id") List<dynamic>? responsibleUserId});
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
    Object? createUid = freezed,
    Object? datePlan = freezed,
    Object? sourceWarehouseId = freezed,
    Object? destWarehouseId = freezed,
    Object? createDate = freezed,
    Object? responsibleUserId = freezed,
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
      createUid: freezed == createUid
          ? _value.createUid
          : createUid // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      datePlan: freezed == datePlan
          ? _value.datePlan
          : datePlan // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceWarehouseId: freezed == sourceWarehouseId
          ? _value.sourceWarehouseId
          : sourceWarehouseId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      destWarehouseId: freezed == destWarehouseId
          ? _value.destWarehouseId
          : destWarehouseId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      responsibleUserId: freezed == responsibleUserId
          ? _value.responsibleUserId
          : responsibleUserId // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "create_uid") List<dynamic>? createUid,
      @JsonKey(name: "date_plan") String? datePlan,
      @JsonKey(name: "source_warehouse_id") List<dynamic>? sourceWarehouseId,
      @JsonKey(name: "dest_warehouse_id") List<dynamic>? destWarehouseId,
      @JsonKey(name: "create_date") String? createDate,
      @JsonKey(name: "responsible_user_id") List<dynamic>? responsibleUserId});
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
    Object? createUid = freezed,
    Object? datePlan = freezed,
    Object? sourceWarehouseId = freezed,
    Object? destWarehouseId = freezed,
    Object? createDate = freezed,
    Object? responsibleUserId = freezed,
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
      createUid: freezed == createUid
          ? _value._createUid
          : createUid // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      datePlan: freezed == datePlan
          ? _value.datePlan
          : datePlan // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceWarehouseId: freezed == sourceWarehouseId
          ? _value._sourceWarehouseId
          : sourceWarehouseId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      destWarehouseId: freezed == destWarehouseId
          ? _value._destWarehouseId
          : destWarehouseId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      responsibleUserId: freezed == responsibleUserId
          ? _value._responsibleUserId
          : responsibleUserId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "create_uid") final List<dynamic>? createUid,
      @JsonKey(name: "date_plan") this.datePlan,
      @JsonKey(name: "source_warehouse_id")
      final List<dynamic>? sourceWarehouseId,
      @JsonKey(name: "dest_warehouse_id") final List<dynamic>? destWarehouseId,
      @JsonKey(name: "create_date") this.createDate,
      @JsonKey(name: "responsible_user_id")
      final List<dynamic>? responsibleUserId})
      : _createUid = createUid,
        _sourceWarehouseId = sourceWarehouseId,
        _destWarehouseId = destWarehouseId,
        _responsibleUserId = responsibleUserId;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  final List<dynamic>? _createUid;
  @override
  @JsonKey(name: "create_uid")
  List<dynamic>? get createUid {
    final value = _createUid;
    if (value == null) return null;
    if (_createUid is EqualUnmodifiableListView) return _createUid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "date_plan")
  final String? datePlan;
  final List<dynamic>? _sourceWarehouseId;
  @override
  @JsonKey(name: "source_warehouse_id")
  List<dynamic>? get sourceWarehouseId {
    final value = _sourceWarehouseId;
    if (value == null) return null;
    if (_sourceWarehouseId is EqualUnmodifiableListView)
      return _sourceWarehouseId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _destWarehouseId;
  @override
  @JsonKey(name: "dest_warehouse_id")
  List<dynamic>? get destWarehouseId {
    final value = _destWarehouseId;
    if (value == null) return null;
    if (_destWarehouseId is EqualUnmodifiableListView) return _destWarehouseId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "create_date")
  final String? createDate;
  final List<dynamic>? _responsibleUserId;
  @override
  @JsonKey(name: "responsible_user_id")
  List<dynamic>? get responsibleUserId {
    final value = _responsibleUserId;
    if (value == null) return null;
    if (_responsibleUserId is EqualUnmodifiableListView)
      return _responsibleUserId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(id: $id, name: $name, createUid: $createUid, datePlan: $datePlan, sourceWarehouseId: $sourceWarehouseId, destWarehouseId: $destWarehouseId, createDate: $createDate, responsibleUserId: $responsibleUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._createUid, _createUid) &&
            (identical(other.datePlan, datePlan) ||
                other.datePlan == datePlan) &&
            const DeepCollectionEquality()
                .equals(other._sourceWarehouseId, _sourceWarehouseId) &&
            const DeepCollectionEquality()
                .equals(other._destWarehouseId, _destWarehouseId) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            const DeepCollectionEquality()
                .equals(other._responsibleUserId, _responsibleUserId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_createUid),
      datePlan,
      const DeepCollectionEquality().hash(_sourceWarehouseId),
      const DeepCollectionEquality().hash(_destWarehouseId),
      createDate,
      const DeepCollectionEquality().hash(_responsibleUserId));

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
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "create_uid") final List<dynamic>? createUid,
      @JsonKey(name: "date_plan") final String? datePlan,
      @JsonKey(name: "source_warehouse_id")
      final List<dynamic>? sourceWarehouseId,
      @JsonKey(name: "dest_warehouse_id") final List<dynamic>? destWarehouseId,
      @JsonKey(name: "create_date") final String? createDate,
      @JsonKey(name: "responsible_user_id")
      final List<dynamic>? responsibleUserId}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "create_uid")
  List<dynamic>? get createUid;
  @override
  @JsonKey(name: "date_plan")
  String? get datePlan;
  @override
  @JsonKey(name: "source_warehouse_id")
  List<dynamic>? get sourceWarehouseId;
  @override
  @JsonKey(name: "dest_warehouse_id")
  List<dynamic>? get destWarehouseId;
  @override
  @JsonKey(name: "create_date")
  String? get createDate;
  @override
  @JsonKey(name: "responsible_user_id")
  List<dynamic>? get responsibleUserId;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
