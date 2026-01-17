// To parse this JSON data, do
//
//     final warehouse = warehouseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'warehouse.freezed.dart';
part 'warehouse.g.dart';

Warehouse warehouseFromJson(String str) => Warehouse.fromJson(json.decode(str));

String warehouseToJson(Warehouse data) => json.encode(data.toJson());

@freezed
class Warehouse with _$Warehouse {
  const factory Warehouse({
    String? jsonrpc,
    dynamic id,
    List<Result>? result,
  }) = _Warehouse;

  factory Warehouse.fromJson(Map<String, dynamic> json) => _$WarehouseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    String? name,
    @JsonKey(name: 'warehouse_id',)

    List<dynamic>? warehouse_id,
    int? count_picking_ready,
    String? display_name,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

