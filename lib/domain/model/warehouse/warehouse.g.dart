// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseImpl _$$WarehouseImplFromJson(Map<String, dynamic> json) =>
    _$WarehouseImpl(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WarehouseImplToJson(_$WarehouseImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      warehouse_id: json['warehouse_id'] as List<dynamic>?,
      count_picking_ready: (json['count_picking_ready'] as num?)?.toInt(),
      display_name: json['display_name'] as String?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'warehouse_id': instance.warehouse_id,
      'count_picking_ready': instance.count_picking_ready,
      'display_name': instance.display_name,
    };
