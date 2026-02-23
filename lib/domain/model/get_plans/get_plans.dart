// To parse this JSON data, do
//
//     final getPlans = getPlansFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'dart:convert';

part 'get_plans.freezed.dart';
part 'get_plans.g.dart';

GetPlans getPlansFromJson(String str) => GetPlans.fromJson(json.decode(str));

String getPlansToJson(GetPlans data) => json.encode(data.toJson());

@freezed
class GetPlans with _$GetPlans {
  const factory GetPlans({
    @JsonKey(name: "jsonrpc")
    String? jsonrpc,
    @JsonKey(name: "id")
    dynamic id,
    @JsonKey(name: "result")
    List<Result>? result,
  }) = _GetPlans;

  factory GetPlans.fromJson(Map<String, dynamic> json) => _$GetPlansFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "create_uid")
    List<dynamic>? createUid,
    @JsonKey(name: "date_plan")
    String? datePlan,
    @JsonKey(name: "source_warehouse_id")
    List<dynamic>? sourceWarehouseId,
    @JsonKey(name: "dest_warehouse_id")
    List<dynamic>? destWarehouseId,
    @JsonKey(name: "create_date")
    String? createDate,
    @JsonKey(name: "responsible_user_id")
    List<dynamic>? responsibleUserId,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
