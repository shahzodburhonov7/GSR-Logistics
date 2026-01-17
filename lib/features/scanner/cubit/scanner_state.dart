import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanner_state.freezed.dart';

@freezed
class ScannerBuildable with _$ScannerBuildable {
  const factory ScannerBuildable({
    @Default(false) bool loading,

  }) = _ScannerBuildable;
}

@freezed
class ScannerListenable with _$ScannerListenable {
  const factory ScannerListenable({required ScannerEffect effect,String? errorText}) = _ScannerListenable;
}
enum ScannerEffect { error, success, }
