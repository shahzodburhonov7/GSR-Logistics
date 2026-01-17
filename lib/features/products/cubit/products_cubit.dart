import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:warhouse_qr_code/common/base/base_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/domain/auth/auth_repo.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';
import 'package:warhouse_qr_code/features/products/cubit/products_state.dart';
import 'package:warhouse_qr_code/features/service_ws/odoo_socket_service.dart';

import '../../../domain/model/products_list/products_list.dart';

@injectable
class ProductsCubit extends BaseCubit<ProductsBuildable, ProductsListenable> {

  ProductsCubit(this.repository, this.socketService, {required this.storage})
      : super(const ProductsBuildable());

  final AuthRepository repository;
  final OdooSocketService socketService;
  StreamSubscription? _socketSub;

  final Storage storage;
  bool isScanningBlocked = false;
  final ValueNotifier<bool> scanningBlockedNotifier =
  ValueNotifier(false);

  void listenSocket() {
    if (_socketSub != null) return;

    _socketSub =
        socketService.messages.listen(_onMessageReceived);
  }

  @override
  Future<void> close() {
    _socketSub?.cancel();
    return super.close();
  }

  List<Result> _sortByScanned(List<Result> list) {
    final scanned = <Result>[];
    final notScanned = <Result>[];

    for (final item in list) {
      final isScanned =
          item.employee_id != null && item.employee_id != false;

      if (isScanned) {
        scanned.add(item);
      } else {
        notScanned.add(item);
      }
    }

    // 🔥 Avval skanerlanganlar, keyin qolganlar
    return [...scanned, ...notScanned];
  }


  void _onMessageReceived(dynamic message) {
    if (message is List) {
      for (var item in message) {
        final busMessage = item['message'];
        if (busMessage == null) continue;

        final type = busMessage['type'];
        final payload = busMessage['payload'];

        // --- YANGILASH ---
        if (type == 'picking_update') {
          final lineId = payload['line_id'];
          final employeeId = payload['employee_id'];
          if (lineId != null) {
            _updateProductInList(lineId, employeeId);
          }
        }
        // --- O'CHIRISH (YANGI QISM) ---
        else if (type == 'line_remove') {
          final List? lineIds = payload['line_ids'];
          if (lineIds != null && lineIds.isNotEmpty) {
            _removeProductsFromList(lineIds.cast<int>());
          }
        }
      }
    }
  }

  void _removeProductsFromList(List<int> lineIds) {
    final currentList = buildable.productsList;
    if (currentList?.result == null) return;

    // lineIds ichida bo'lmagan elementlarni saqlab qolamiz (ya'ni borlarini o'chiramiz)
    final updatedResult = currentList!.result!
        .where((item) => !lineIds.contains(item.id))
        .toList();

    // Agar birorta element o'chgan bo'lsa, state-ni yangilaymiz
    if (updatedResult.length != currentList.result!.length) {
      build(
            (state) =>
            state.copyWith(
              productsList: currentList.copyWith(result: updatedResult),
            ),
      );

      HapticFeedback.lightImpact();
    }
  }

  void _updateProductInList(int lineId, dynamic employeeId) {
    final currentList = buildable.productsList;
    final List<Result>? result = currentList?.result;

    if (result == null || result.isEmpty) return;

    // 1️⃣ index topamiz
    final index = result.indexWhere((e) => e.id == lineId);
    if (index == -1) return;

    final oldItem = result[index];

    // 2️⃣ update qilingan item
    final Result updatedItem = oldItem.copyWith(
      employee_id: employeeId is int
          ? [employeeId, "Skanerlandi"]
          : employeeId,
    );

    // 3️⃣ TYPE BILAN yangi list
    final List<Result> updatedList = List<Result>.from(result);

    // eski joyidan o‘chiramiz
    updatedList.removeAt(index);

    // 🔥 ENG TEPAGA QO‘SHAMIZ
    updatedList.insert(0, updatedItem);

    // 4️⃣ STATE YANGILASH
    build(
          (state) =>
          state.copyWith(
            productsList: currentList!.copyWith(result: updatedList),
          ),
    );

    HapticFeedback.mediumImpact();
  }

  // void _updateProductInList(int lineId, dynamic employeeId) {
  //   final currentList = buildable.productsList;
  //   if (currentList?.result == null) return;
  //   final updatedResult = currentList!.result!.map((item) {
  //     if (item.id == lineId) {
  //       return item.copyWith(employee_id: employeeId is int
  //           ? [employeeId, "Skanerlandi"]
  //           : employeeId,);
  //     }
  //     return item;
  //   }).toList();
  //   build((state) =>
  //       state.copyWith(
  //         productsList: currentList.copyWith(result: updatedResult),),);
  //   HapticFeedback.mediumImpact();
  // }


  void getHomeApi({required int id}) {
    callable(
      future: repository.products(id: id),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) {
        listenSocket();

        final sortedResult = _sortByScanned(d.result ?? []);

        return buildable.copyWith(
          loading: false,
          productsList: d.copyWith(result: sortedResult),
        );
      },
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }

  void getValidation() {
    callable(
      future: repository.validate(),
      buildOnStart: () => buildable.copyWith(validateLoading: true),
      buildOnData: (d) {
        return buildable.copyWith(validateLoading: false);
      },
      buildOnError: (e) => buildable.copyWith(validateLoading: false),
    );
  }

  void getScanner({required String barcode}) {
    callable(
      future: repository.scanner(
        barcode: barcode,
        pickingId: storage.pickingId.call() ?? 0,
      ),
      buildOnStart: () => buildable.copyWith(scannerLoading: true),
      buildOnData: (d) => buildable.copyWith(scannerLoading: false),
      buildOnError: (e) => buildable.copyWith(scannerLoading: false),
      invokeOnData: (d) {
        return ProductsListenable(effect: ProductsEffect.success);
      },
      invokeOnError: (e) =>
          ProductsListenable(effect: ProductsEffect.error, errorText: e),
    );
  }

  // Cubit ichida
  void toggleScanner() {
    build((b) => b.copyWith(isScannerOpen: !buildable.isScannerOpen));
  }

// ProductsCubit ichida:

  void onBarcodeDetected(String code) async {
    if (scanningBlockedNotifier.value) return;

    scanningBlockedNotifier.value = true;

    getScanner(barcode: code);
    HapticFeedback.heavyImpact();

    await Future.delayed(const Duration(milliseconds: 800));

    scanningBlockedNotifier.value = false;
  }

}

