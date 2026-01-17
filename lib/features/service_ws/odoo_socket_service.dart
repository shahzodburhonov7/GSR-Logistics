import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';

@lazySingleton
class OdooSocketService {
  WebSocket? _socket;
  final String _baseUrl = "https://gsr.sfera-erp.uz";
  // final String _baseUrl = 'https://dovudbek5555-gsr-logistics-dev-27846076.dev.odoo.com';

  String? _lastSessionId;
  bool _isManuallyClosed = false;

  final _messageController = StreamController<dynamic>.broadcast();
  Stream<dynamic> get messages => _messageController.stream;

  bool get isConnected => _socket?.readyState == WebSocket.open;

  Future<void> connect(String sessionId) async {
    _lastSessionId = sessionId;
    _isManuallyClosed = false;

    if (isConnected) return;

    final wsUrl = '${_baseUrl.replaceFirst('http', 'ws')}/websocket';

    try {
      _socket = await WebSocket.connect(
        wsUrl,
        headers: {
          "Cookie": "session_id=$sessionId",
          "Origin": _baseUrl,
        },
      ).timeout(const Duration(seconds: 5)); // Ulanishni juda uzoq kutmaslik uchun

      debugPrint("🚀 Odoo 18 Websocket ulandi!");
      _subscribe();

      _socket!.listen(
            (data) {
          final decodedData = jsonDecode(data.toString());
          _messageController.add(decodedData);
          debugPrint("📩 Kelgan ma'lumot: $decodedData");
        },
        onError: (e) {
          debugPrint("❌ Socket xatolik: $e");
          _handleReconnect();
        },
        onDone: () {
          debugPrint("🔌 Socket yopildi");
          _handleReconnect();
        },
        cancelOnError: true,
      );
    } catch (e) {
      debugPrint("❌ Ulanishda xatolik: $e");
      _handleReconnect(); // Server o'chiq bo'lsa ham urinib ko'radi
    }
  }

  // Qayta ulanish logikasi
  void _handleReconnect() {
    if (_isManuallyClosed) return; // Agar o'zimiz yopsak, qayta ulanmaydi

    debugPrint("🔄 5 soniyadan keyin qayta ulanishga urinib ko'riladi...");

    // Har 5 soniyada qayta ulanishga harakat qiladi
    Future.delayed(const Duration(seconds: 5), () {
      if (_lastSessionId != null && !isConnected) {
        connect(_lastSessionId!);
      }
    });
  }

  void _subscribe() {
    if (!isConnected) return;
    final subscribePayload = {
      "event_name": "subscribe",
      "data": {"channels": ["scan_channel"], "last": 0}
    };
    _socket!.add(jsonEncode(subscribePayload));
  }

  void sendScanResult(String code) {
    if (!isConnected) {
      debugPrint("⚠️ Socket ulanmagan! Kod yuborilmadi.");
      return;
    }
    final payload = {
      "event_name": "barcode_scanned",
      "data": {"barcode": code}
    };
    _socket!.add(jsonEncode(payload));
  }

  void disconnect() {
    _isManuallyClosed = true; // Avtomatik ulanishni to'xtatamiz
    _socket?.close();
    _socket = null;
  }
}