import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:warhouse_qr_code/common/extensions/text_extensions.dart';
import 'package:warhouse_qr_code/common/widgets/custom_button.dart';
import 'package:warhouse_qr_code/common/widgets/flush_bar.dart';
import 'package:warhouse_qr_code/common/widgets/scale_animation.dart';
import 'package:warhouse_qr_code/features/products/cubit/products_cubit.dart';
import 'package:warhouse_qr_code/features/products/cubit/products_state.dart';

@RoutePage()
class ProductsPage
    extends BasePage<ProductsCubit, ProductsBuildable, ProductsListenable> {
  const ProductsPage({super.key, required this.name, required this.id});

  final String name;
  final int id;

  @override
  void init(BuildContext context) {
    final cubit = context.read<ProductsCubit>();
    cubit.getHomeApi(id: id);
    super.init(context);
  }

  @override
  void listener(BuildContext context, ProductsListenable state) {
    switch (state.effect) {
      case ProductsEffect.error:
        _showSnackBar(
          context,
          state.errorText ?? "Xatolik",
          isError: true,
        );
        break;

      case ProductsEffect.success:
        _showSnackBar(
          context,
          "Scanner qilindi".tr(),
        );
        break;
    }
    super.listener(context, state);
  }

  @override
  Widget builder(BuildContext context, ProductsBuildable state) {
    final cubit = context.read<ProductsCubit>();

    return Scaffold(
      appBar: AppBar(
        title: name.s(16.r),
        centerTitle: true,
        actions: [
          WScaleAnimation(
            onTap: () {
              cubit.toggleScanner();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Icon(
                state.isScannerOpen ? Icons.close : Icons.qr_code_scanner,
                size: 24.r,
                color: const Color(0xff875A7B),
              ),
            ),
          ),
        ],
      ),
      body: state.loading
          ? const Center(child: CupertinoActivityIndicator())
          : SafeArea(
              child: Column(
                children: [
                  if (state.isScannerOpen)
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          MobileScanner(
                            controller: MobileScannerController(
                              formats: [
                                BarcodeFormat.qrCode,
                                BarcodeFormat.ean13,
                              ],
                              detectionSpeed: DetectionSpeed.normal,
                            ),
                            onDetect: (capture) {
                              final barcode = capture.barcodes.firstOrNull;
                              if (barcode != null && barcode.rawValue != null) {
                                cubit.onBarcodeDetected(barcode.rawValue!);
                              }
                            },
                          ),
                          _buildScannerOverlay(context),
                        ],
                      ),
                    ),
                  Expanded(
                    child: Padding(
                      padding: REdgeInsets.only(
                        bottom: 100,
                        left: 16,
                        right: 16,
                        top: 16,
                      ),
                      child: ListView.builder(
                        itemCount: state.productsList?.result?.length ?? 0,
                        itemBuilder: (context, index) {
                          final item = state.productsList?.result?[index];
                          final bool isScanned =
                              item?.employee_id != null &&
                              item?.employee_id != false;

                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 16,
                            ),
                            margin: REdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                              color: isScanned
                                  ? Colors.green.shade500
                                  : Colors.white,
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Center(
                              child: "${item?.lot_id?[1]}"
                                  .s(16)
                                  .w(500)
                                  .c(isScanned ? Colors.white : Colors.black),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomButton(
          loading: state.validateLoading,
          onTap: () {
            cubit.getValidation();
          },
          text: "Validation",
        ),
      ),
    );
  }

  // ProductsPage ichida:

  Widget _buildScannerOverlay(BuildContext context) {
    final cubit = context.read<ProductsCubit>();

    return ValueListenableBuilder<bool>(
      valueListenable: cubit.scanningBlockedNotifier,
      builder: (context, blocked, _) {
        return Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 220.r,
            height: 160.r,
            decoration: BoxDecoration(
              border: Border.all(
                color: blocked ? Colors.green : Colors.white,
                width: blocked ? 4 : 2,
              ),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: blocked
                ? const Center(
                    child: Icon(Icons.check, color: Colors.green, size: 50),
                  )
                : null,
          ),
        );
      },
    );
  }
}
void _showSnackBar(
    BuildContext context,
    String text, {
      bool isError = false,
    }) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent, // MUHIM
        elevation: 0,
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        content: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: isError
                ? const Color(0xFFFFEBEE) // light red
                : const Color(0xFFE8F5E9), // light green
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: isError ? Colors.red : Colors.green,
              width: 1.2,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                isError ? Icons.error_outline : Icons.check_circle_outline,
                color: isError ? Colors.red : Colors.green,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
}

