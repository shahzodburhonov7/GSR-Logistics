import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:warhouse_qr_code/common/widgets/flush_bar.dart';
import 'package:warhouse_qr_code/features/scanner/cubit/scanner_cubit.dart';
import 'package:warhouse_qr_code/features/scanner/cubit/scanner_state.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:warhouse_qr_code/features/scanner/widget/qr_scanner_overlay_shape.dart';

@RoutePage()
class ScannerPage extends BasePage<ScannerCubit, ScannerBuildable, ScannerListenable> {
  const ScannerPage({super.key});


  @override
  void listener(BuildContext context, ScannerListenable state) {
    switch (state.effect) {
      case ScannerEffect.error:
        showErrorFlushBar("${state.errorText}").show(context);
        break;
      case ScannerEffect.success:
        showSuccessFlushBar("Scanner qilindi".tr()).show(context);
        break;

    }
    super.listener(context, state);
  }


  @override
  Widget builder(BuildContext context, ScannerBuildable state) {
    final cubit = context.read<ScannerCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Ombor Skaneri')),
      body: Stack(
        children: [
          MobileScanner(
            controller: MobileScannerController(
              detectionSpeed: DetectionSpeed.noDuplicates,
            ),
            onDetect: (capture) {
              final barcode = capture.barcodes.firstOrNull;
              if (barcode != null && barcode.rawValue != null) {
                cubit.onBarcodeDetected(barcode.rawValue);
              }
            },
          ),
          _buildOverlay(context),
        ],
      ),
    );
  }

  Widget _buildOverlay(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: QrScannerOverlayShape(
          borderColor: Colors.blue,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: MediaQuery.of(context).size.width * 0.7,
        ),
      ),
    );
  }
}