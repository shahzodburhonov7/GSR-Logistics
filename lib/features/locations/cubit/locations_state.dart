import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warhouse_qr_code/domain/model/stock_picking/stock_picking.dart';

part 'locations_state.freezed.dart';

@freezed
class LocationsBuildable with _$LocationsBuildable {
  const factory LocationsBuildable({
    @Default(false) bool loading,
    List<StockPicking>? stockPicking
  }) = _LocationsBuildable;
}

@freezed
class LocationsListenable with _$LocationsListenable {
  const factory LocationsListenable() = _LocationsListenable;
}