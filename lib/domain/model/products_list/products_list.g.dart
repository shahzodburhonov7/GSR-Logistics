// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsListImpl _$$ProductsListImplFromJson(Map<String, dynamic> json) =>
    _$ProductsListImpl(
      jsonrpc: json['jsonrpc'] as String?,
      id: json['id'],
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductsListImplToJson(_$ProductsListImpl instance) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num?)?.toInt(),
      product_id: _many2oneFromJson(json['product_id']),
      quantity: (json['quantity'] as num?)?.toInt(),
      lot_id: _many2oneFromJson(json['lot_id']),
      location_id: _many2oneFromJson(json['location_id']),
      location_dest_id: _many2oneFromJson(json['location_dest_id']),
      create_uid: _many2oneFromJson(json['create_uid']),
      employee_id: _many2oneFromJson(json['employee_id']),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.product_id,
      'quantity': instance.quantity,
      'lot_id': instance.lot_id,
      'location_id': instance.location_id,
      'location_dest_id': instance.location_dest_id,
      'create_uid': instance.create_uid,
      'employee_id': instance.employee_id,
    };
