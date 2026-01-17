// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_picking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockPickingImpl _$$StockPickingImplFromJson(Map<String, dynamic> json) =>
    _$StockPickingImpl(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StockPickingImplToJson(_$StockPickingImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      partnerId: json['partner_id'] as List<dynamic>?,
      state: json['state'] as String?,
      scheduledDate: json['scheduled_date'] as String?,
      dateDeadline: json['date_deadline'],
      carNumber: json['car_number'],
      carArrivalTime: json['car_arrival_time'],
      createUid: json['create_uid'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'partner_id': instance.partnerId,
      'state': instance.state,
      'scheduled_date': instance.scheduledDate,
      'date_deadline': instance.dateDeadline,
      'car_number': instance.carNumber,
      'car_arrival_time': instance.carArrivalTime,
      'create_uid': instance.createUid,
    };
