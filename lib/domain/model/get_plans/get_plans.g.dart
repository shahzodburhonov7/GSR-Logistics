// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_plans.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPlansImpl _$$GetPlansImplFromJson(Map<String, dynamic> json) =>
    _$GetPlansImpl(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetPlansImplToJson(_$GetPlansImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createUid: json['create_uid'] as List<dynamic>?,
      datePlan: json['date_plan'] as String?,
      sourceWarehouseId: json['source_warehouse_id'] as List<dynamic>?,
      destWarehouseId: json['dest_warehouse_id'] as List<dynamic>?,
      createDate: json['create_date'] as String?,
      responsibleUserId: json['responsible_user_id'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'create_uid': instance.createUid,
      'date_plan': instance.datePlan,
      'source_warehouse_id': instance.sourceWarehouseId,
      'dest_warehouse_id': instance.destWarehouseId,
      'create_date': instance.createDate,
      'responsible_user_id': instance.responsibleUserId,
    };
