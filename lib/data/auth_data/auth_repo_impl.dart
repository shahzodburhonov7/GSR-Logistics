import 'package:warhouse_qr_code/data/auth_data/auth_api.dart';
import 'package:warhouse_qr_code/domain/auth/auth_repo.dart';
import 'package:warhouse_qr_code/domain/model/get_line/get_line.dart';
import 'package:warhouse_qr_code/domain/model/get_plans/get_plans.dart';
import 'package:warhouse_qr_code/domain/model/products_list/products_list.dart';
import 'package:warhouse_qr_code/domain/model/stock_picking/stock_picking.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/domain/model/warehouse/warehouse.dart';

@Injectable(as: AuthRepository)
class AuthRepoImpl extends AuthRepository {
  final AuthApi _api;
  final Storage storage;

  AuthRepoImpl(this._api, this.storage);

  @override
  Future<void> register({
    required String email,
    required String confirmPassword,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    await _api.register(
      email: email,
      confirmPassword: confirmPassword,
      password: password,
      firstName: firstName,
      lastName: lastName,
    );
  }

  @override
  Future<void> sentOtp({required String email}) async {
    await _api.sendOtp(email: email);
  }

  @override
  Future<void> verifyOtp({
    required String email,
    required String otpText,
  }) async {
    await _api.otpVerify(otpText: otpText, email: email);
  }

  @override
  Future<void> userLogin({
    required String password,
    required String login,
  }) async {
    final res = await _api.userLogin(password: password, username: login);

    final cookies = res.headers.map['set-cookie'];

    if (cookies == null || cookies.isEmpty) {
      throw Exception('Set-Cookie header kelmadi');
    }

    final sessionId = cookies.first
        .split(';')
        .first
        .replaceFirst('session_id=', '');

    if (sessionId.isEmpty) {
      throw Exception('Session ID bo‘sh');
    }
    await storage.employee_id.set(res.data["employee_id"]);
    await storage.userName.set(res.data["employee_name"]);

    final List<int> warehouseIds = List<int>.from(
      res.data["warehouse_ids"] ?? [],
    );

    await storage.warehouseIds.set(warehouseIds);
    await storage.token.set(sessionId);
    debugPrint("💡${storage.warehouseIds.call()}");

    debugPrint('SESSION FROM HEADER SAVED: $sessionId');
  }

  @override
  Future<Warehouse> getHomeApi() async {
    final res = await _api.getOperationTypes();

    return Warehouse.fromJson(res.data);
  }

  @override
  Future<List<StockPicking>> stockPicking({required int id}) async {
    final res = await _api.stockPicking(id: id);
    final List list = res.data;

    final stockPickings = list
        .map((e) => StockPicking.fromJson(e as Map<String, dynamic>))
        .toList();
    return stockPickings;
  }

  @override
  Future<ProductsList> products({required int id}) async {
    final res = await _api.products(id: id);

    return ProductsList.fromJson(res.data);
  }

  @override
  Future<void> scanner({
    required String barcode,
    required int pickingId,
  }) async {
    await _api.scanner(barcode: barcode, pickingId: pickingId);
  }

  @override
  Future<void> validate() async {
    await _api.validation();
  }

  @override
  Future<GetPlans> getPlans({required String state}) async {
    final res = await _api.getPlans(state: state);
    return GetPlans.fromJson(res.data);
  }

  @override
  Future<GetLine> getLine({required int id}) async {
    final res = await _api.getPlansLine(planId: id);
    return GetLine.fromJson(res.data);
  }
}
