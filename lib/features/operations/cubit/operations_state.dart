import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warhouse_qr_code/domain/model/warehouse/warehouse.dart';

part 'operations_state.freezed.dart';

@freezed
class OperationsBuildable with _$OperationsBuildable {
  const factory OperationsBuildable({
    @Default(false) bool loading,
    Warehouse? warehouse
  }) = _OperationsBuildable;
}

@freezed
class OperationsListenable with _$OperationsListenable {
  const factory OperationsListenable() = _OperationsListenable;
}