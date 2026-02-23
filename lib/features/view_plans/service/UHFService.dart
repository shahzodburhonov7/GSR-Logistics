// lib/common/services/uhf_service.dart
import 'package:flutter/services.dart';

class UHFService {
  static const _platform = MethodChannel('com.uzbek.uhf/scanner');

  Future<void> initScanner() async {
    _platform.setMethodCallHandler((call) async {
      if (call.method == "onTagRead") {
        // Bu yerda kelayotgan ma'lumotni Cubit-ga qaytarish kerak bo'ladi
      }
    });
  }

  Future<void> startScan() async => await _platform.invokeMethod('startScan');
  Future<void> stopScan() async => await _platform.invokeMethod('stopScan');
  Future<void> setPower(int power) async => await _platform.invokeMethod('setPower', {'power': power});
}