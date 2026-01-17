import 'package:auto_route/auto_route.dart';
import 'package:warhouse_qr_code/common/di/injection.dart';
import 'package:warhouse_qr_code/common/router/app_router.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthInterceptor extends QueuedInterceptor {
  final Storage _storage;
  final LocaleProvider _localeProvider;

  AuthInterceptor(this._storage, this._localeProvider);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final sessionId = _storage.token();

    final needSession =
        options.path.contains('/web/dataset/call_kw') ||
        options.path.contains('/api/scan') ||
        options.path.contains('/api/validate');

    if (needSession && sessionId != null) {
      options.headers.addAll({
        'Cookie': 'session_id=$sessionId',
        'Accept-Language': _localeProvider.getLocale().languageCode,
        'Content-Type': 'application/json',
      });
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data is Map &&
        response.data['error'] != null &&
        response.data['error']['code'] == 100) {
      /// 🔥 Session expired
      _storage.token.delete();

      _redirectToLogin();

      return;
    }

    handler.next(response);
  }
}

void _redirectToLogin() {
  final context = getIt<AppRouter>().navigatorKey.currentContext;
  if (context != null) {
    Future.microtask(() {
      if (context.mounted) {
        context.router.replaceAll([LoginRoute()]);
      }
    });
  }
}

@lazySingleton
class LocaleProvider {
  Locale _locale = const Locale('uz', 'UZ');

  Locale getLocale() => _locale;

  void setLocale(Locale locale) {
    _locale = locale;
  }

  String getLanguageCode() {
    debugPrint("Changed also here: ${_locale.languageCode}");
    return _locale.languageCode;
  }
}
