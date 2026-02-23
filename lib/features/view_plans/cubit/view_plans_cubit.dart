import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/common/base/base_cubit.dart';
import 'package:warhouse_qr_code/domain/auth/auth_repo.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';
import 'package:warhouse_qr_code/features/view_plans/cubit/view_plans_state.dart';

@injectable
class ViewPlansCubit
    extends BaseCubit<ViewPlansBuildable, ViewPlansListenable> {
  ViewPlansCubit(this.storage, this.repository)
    : super(const ViewPlansBuildable()){
    _initScannerListener();
  }
  final Storage storage;
  final AuthRepository repository;
  static const _platform = MethodChannel('com.uzbek.uhf/scanner');

  final Set<String> _uniqueTags = {};

  void _initScannerListener() {
    _platform.setMethodCallHandler((call) async {
      if (call.method == "onTagRead") {
        final String rawEpc = call.arguments.toString();

        // MUHIM: Kelgan Hex-ni String-ga o'giramiz
        final String decodedTag = _convertHexToString(rawEpc);

        build((b) {
          final newList = List<String>.from(b.scannedTags);

          // Agar formatlangan matn hali ro'yxatda bo'lmasa
          if (!newList.contains(decodedTag)) {
            newList.insert(0, decodedTag);
          }

          return b.copyWith(
            scannedTags: newList,
            lastScannedTag: decodedTag,
          );
        });
      }
    });
  }


  void startUHFScan() {
    _platform.invokeMethod('startScan');
  }

  void stopUHFScan() {
    _platform.invokeMethod('stopScan');
  }

  void clearTags() {
    _uniqueTags.clear();
    build((b) => b.copyWith(scannedTags: []));
  }

  String _convertHexToString(String hex) {
    try {
      // Bo'sh joylarni va keraksiz belgilarni tozalash
      final cleanHex = hex.replaceAll(RegExp(r'[\s\t\n\r]'), '');

      // Agar uzunlik toq bo'lsa, oxiriga 0 qo'shib juftlaymiz (xatolik bermasligi uchun)
      String finalHex = cleanHex.length % 2 != 0 ? '${cleanHex}0' : cleanHex;

      final List<int> bytes = [];
      for (int i = 0; i < finalHex.length; i += 2) {
        final String part = finalHex.substring(i, i + 2);
        final int byte = int.parse(part, radix: 16);
        if (byte != 0) { // Null terminatorlarni tashlab ketamiz
          bytes.add(byte);
        }
      }

      return String.fromCharCodes(bytes).trim();
    } catch (e) {
      debugPrint("Hex decoding error: $e");
      return hex; // Xato bo'lsa asl holini qaytaramiz
    }
  }




  void getPlans({required String state}) {
    callable(
      future: repository.getPlans(state: state),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) => buildable.copyWith(loading: false, getPlans: d),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }
  void getPlansLine({required int id}) {
    callable(
      future: repository.getLine(id: id),
      buildOnStart: () => buildable.copyWith(lineLoading: true),
      buildOnData: (d) => buildable.copyWith(lineLoading: false,getLine: d ),
      buildOnError: (e) => buildable.copyWith(lineLoading: false),
    );
  }

  void selectButton(int index) {
    build((buildable) => buildable.copyWith(selectedIndex: index));

  }
}
