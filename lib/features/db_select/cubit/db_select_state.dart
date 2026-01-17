import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_select_state.freezed.dart';

@freezed
class DbSelectBuildable with _$DbSelectBuildable {
  const factory DbSelectBuildable() = _DbSelectBuildable;
}

@freezed
class DbSelectListenable with _$DbSelectListenable {
  const factory DbSelectListenable() = _DbSelectListenable;
}