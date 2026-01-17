// To parse this JSON data, do
//
//     final productsList = productsListFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_list.freezed.dart';
part 'products_list.g.dart';

ProductsList productsListFromJson(String str) => ProductsList.fromJson(json.decode(str));

String productsListToJson(ProductsList data) => json.encode(data.toJson());

@freezed
class ProductsList with _$ProductsList {
  const factory ProductsList({
    String? jsonrpc,
    dynamic id,
    List<Result>? result,
  }) = _ProductsList;

  factory ProductsList.fromJson(Map<String, dynamic> json) => _$ProductsListFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,

    @JsonKey(fromJson: _many2oneFromJson)
    List<dynamic>? product_id,

    int? quantity,

    @JsonKey(name: 'lot_id', fromJson: _many2oneFromJson)
    List<dynamic>? lot_id,

    @JsonKey(fromJson: _many2oneFromJson)
    List<dynamic>? location_id,

    @JsonKey(fromJson: _many2oneFromJson)
    List<dynamic>? location_dest_id,

    @JsonKey(fromJson: _many2oneFromJson)
    List<dynamic>? create_uid,

    @JsonKey(fromJson: _many2oneFromJson)
    List<dynamic>? employee_id,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);
}
List<dynamic>? _many2oneFromJson(dynamic value) {
  if (value is List) return value;
  return null;
}

