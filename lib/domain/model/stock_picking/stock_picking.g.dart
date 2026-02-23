// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_picking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockPickingImpl _$$StockPickingImplFromJson(Map<String, dynamic> json) =>
    _$StockPickingImpl(
      displayName: json['display_name'] as String?,
      id: (json['id'] as num?)?.toInt(),
      state: json['state'] as String?,
      partner: json['partner'] as String?,
      scheduledDate: json['scheduled_date'] as String?,
      car: json['car'] as String?,
      carArrivalTime: json['car_arrival_time'] as String?,
      clients:
          (json['clients'] as List<dynamic>?)?.map((e) => e as String).toList(),
      trackIds: (json['track_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$StockPickingImplToJson(_$StockPickingImpl instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'id': instance.id,
      'state': instance.state,
      'partner': instance.partner,
      'scheduled_date': instance.scheduledDate,
      'car': instance.car,
      'car_arrival_time': instance.carArrivalTime,
      'clients': instance.clients,
      'track_ids': instance.trackIds,
    };
