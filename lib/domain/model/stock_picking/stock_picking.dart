// To parse this JSON data, do
//
//     final stockPicking = stockPickingFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'stock_picking.freezed.dart';
part 'stock_picking.g.dart';

StockPicking stockPickingFromJson(String str) => StockPicking.fromJson(json.decode(str));

String stockPickingToJson(StockPicking data) => json.encode(data.toJson());

@freezed
class StockPicking with _$StockPicking {
  const factory StockPicking({
    String? jsonrpc,
    dynamic id,
    List<Result>? result,
  }) = _StockPicking;

  factory StockPicking.fromJson(Map<String, dynamic> json) => _$StockPickingFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    String? name,

    @JsonKey(name: 'partner_id')
    List<dynamic>? partnerId,

    String? state,

    @JsonKey(name: 'scheduled_date')
    String? scheduledDate,

    @JsonKey(name: 'date_deadline')
    dynamic dateDeadline,

    @JsonKey(name: 'car_number')
    dynamic carNumber,

    @JsonKey(name: 'car_arrival_time')
    dynamic carArrivalTime,

    @JsonKey(name: 'create_uid')
    List<dynamic>? createUid,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);
}


