import 'package:flutter/cupertino.dart';
import 'package:warhouse_qr_code/features/db_select/db_select_page.dart';
import 'package:warhouse_qr_code/features/locations/locations_page.dart';
import 'package:warhouse_qr_code/features/login/login_page.dart';
import 'package:warhouse_qr_code/features/login/register_page.dart';
import 'package:warhouse_qr_code/features/operations/operations_page.dart';
import 'package:warhouse_qr_code/features/products/products_page.dart';
import 'package:warhouse_qr_code/features/scanner/scanner_page.dart';
import 'package:warhouse_qr_code/features/splash/splash_page.dart';
import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: DbSelectRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: OperationsRoute.page),
    AutoRoute(page: LocationsRoute.page),
    AutoRoute(page: ProductsRoute.page),
    AutoRoute(page: ScannerRoute.page),
    AutoRoute(page: RegisterRoute.page),
  ];
}
