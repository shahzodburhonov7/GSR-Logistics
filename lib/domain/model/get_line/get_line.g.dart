// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetLineImpl _$$GetLineImplFromJson(Map<String, dynamic> json) =>
    _$GetLineImpl(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetLineImplToJson(_$GetLineImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num?)?.toInt(),
      productId: json['product_id'] as List<dynamic>?,
      trackId: json['track_id'] as String?,
      clientId: json['client_id'] as List<dynamic>?,
      pickQty: (json['pick_qty'] as num?)?.toInt(),
      boxVolume: (json['box_volume'] as num?)?.toDouble(),
      boxWeight: (json['box_weight'] as num?)?.toInt(),
      logisticPhoto: json['logistic_photo'] as String?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'track_id': instance.trackId,
      'client_id': instance.clientId,
      'pick_qty': instance.pickQty,
      'box_volume': instance.boxVolume,
      'box_weight': instance.boxWeight,
      'logistic_photo': instance.logisticPhoto,
    };
