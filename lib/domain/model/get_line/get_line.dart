// To parse this JSON data, do
//
//     final getLine = getLineFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'dart:convert';

part 'get_line.freezed.dart';
part 'get_line.g.dart';

GetLine getLineFromJson(String str) => GetLine.fromJson(json.decode(str));

String getLineToJson(GetLine data) => json.encode(data.toJson());

@freezed
class GetLine with _$GetLine {
  const factory GetLine({
    @JsonKey(name: "jsonrpc")
    String? jsonrpc,
    @JsonKey(name: "id")
    dynamic id,
    @JsonKey(name: "result")
    List<Result>? result,
  }) = _GetLine;

  factory GetLine.fromJson(Map<String, dynamic> json) => _$GetLineFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "product_id")
    List<dynamic>? productId,
    @JsonKey(name: "track_id")
    String? trackId,
    @JsonKey(name: "client_id")
    List<dynamic>? clientId,
    @JsonKey(name: "pick_qty")
    int? pickQty,
    @JsonKey(name: "box_volume")
    double? boxVolume,
    @JsonKey(name: "box_weight")
    int? boxWeight,
    @JsonKey(name: "logistic_photo")
    String? logisticPhoto,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
