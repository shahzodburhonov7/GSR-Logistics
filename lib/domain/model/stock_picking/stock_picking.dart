// To parse this JSON data, do
//
//     final stockPicking = stockPickingFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'dart:convert';

part 'stock_picking.freezed.dart';
part 'stock_picking.g.dart';

List<StockPicking> stockPickingFromJson(String str) => List<StockPicking>.from(json.decode(str).map((x) => StockPicking.fromJson(x)));

String stockPickingToJson(List<StockPicking> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class StockPicking with _$StockPicking {
  const factory StockPicking({
    @JsonKey(name: "display_name")
    String? displayName,
    int? id,
    @JsonKey(name: "state")
    String? state,
    @JsonKey(name: "partner")
    String? partner,
    @JsonKey(name: "scheduled_date")
    String? scheduledDate,
    @JsonKey(name: "car")
    String? car,
    @JsonKey(name: "car_arrival_time")
    String? carArrivalTime,
    @JsonKey(name: "clients")
    List<String>? clients,
    @JsonKey(name: "track_ids")
    List<String>? trackIds,
  }) = _StockPicking;

  factory StockPicking.fromJson(Map<String, dynamic> json) => _$StockPickingFromJson(json);
}
