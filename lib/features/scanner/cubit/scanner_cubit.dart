import 'package:flutter/foundation.dart';
import 'package:warhouse_qr_code/common/base/base_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/domain/auth/auth_repo.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';
import 'package:warhouse_qr_code/features/scanner/cubit/scanner_state.dart';

@injectable
class ScannerCubit extends BaseCubit<ScannerBuildable, ScannerListenable> {
  ScannerCubit(this.repository, {required this.storage})
    : super(const ScannerBuildable());

  bool _isProcessing = false;
  final AuthRepository repository;
  final Storage storage;

  void onBarcodeDetected(String? code) async {
    if (code == null || _isProcessing) return;

    _isProcessing = true;
    getHomeApi(barcode: code);

    debugPrint("Muvaffaqiyatli o'qildi: $code");
    await Future.delayed(const Duration(seconds: 2));
    _isProcessing = false;
  }

  void getHomeApi({required String barcode}) {
    callable(
      future: repository.scanner(
        barcode: barcode,
        pickingId: storage.pickingId.call() ?? 0,
      ),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) => buildable.copyWith(loading: false),
      buildOnError: (e) => buildable.copyWith(loading: false),
      invokeOnData: (d) {
        return ScannerListenable(effect: ScannerEffect.success);
      },
      invokeOnError:
          (e) => ScannerListenable(effect: ScannerEffect.error, errorText: e),
    );
  }
}
