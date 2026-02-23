import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warhouse_qr_code/domain/model/get_line/get_line.dart';
import 'package:warhouse_qr_code/domain/model/get_plans/get_plans.dart';

part 'view_plans_state.freezed.dart';

@freezed
class ViewPlansBuildable with _$ViewPlansBuildable {
  const factory ViewPlansBuildable({
    @Default(false) bool loading,
    @Default(false) bool lineLoading,
    GetPlans? getPlans,
    GetLine? getLine,
    @Default(0) int  selectedIndex,
    @Default(null) String? trackId,
    @Default([]) List<String> scannedTags, // Barcha teglar ro'yxati
    @Default(null) String? lastScannedTag,
  }) = _ViewPlansBuildable;
}

@freezed
class ViewPlansListenable with _$ViewPlansListenable {
  const factory ViewPlansListenable() = _ViewPlansListenable;
}