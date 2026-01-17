import 'package:warhouse_qr_code/common/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';

@injectable
class AuthApi {
  final Dio _dio;
  final Storage storage;

  AuthApi(this._dio, {required this.storage});

  Future<Response> register({
    required String email,
    required String confirmPassword,
    required String password,
    required String firstName,
    required String lastName,
  }) {
    final body = {
      "email": email,
      "firstName": firstName,
      "lastName": lastName,
      "password": password,
      "prePassword": confirmPassword,
    };

    return _dio.post(Constants.apiRegister, data: body);
  }

  Future<Response> sendOtp({required String email}) {
    return _dio.post('${Constants.apiEmailVerify}$email');
  }

  Future<Response> otpVerify({required String otpText, required String email}) {
    return _dio.post(
      Constants.apiOtpVerify,
      data: {"email": email, "otp": otpText},
    );
  }

  Future<Response> getOperationTypes() {
    return _dio.post(
      Constants.apiGetHome,
      data: {
        "params": {
          "model": "stock.picking.type",
          "method": "search_read",
          "args": [
            [
              ["active", "=", true],
              ["warehouse_id", "in", storage.warehouseIds.call()],
            ],
          ],
          "kwargs": {
            "fields": [
              "id",
              "name",
              "warehouse_id",
              "count_picking_ready",
              "display_name",
            ],
          },
        },
      },
    );
  }

  Future<Response> stockPicking({required int id}) {
    return _dio.post(
      Constants.apiGetHome,
      data: {
        "params": {
          "model": "stock.picking",
          "method": "search_read",
          "args": [
            [
              ["picking_type_id", "=", id],
              ["state", "=", "assigned"],
            ],
          ],
          "kwargs": {
            "fields": [
              "id",
              "name",
              "partner_id",
              "state",
              "scheduled_date",
              "date_deadline",
              "create_uid",
              "car_number",
              "car_arrival_time",
            ],
          },
        },
      },
    );
  }

  Future<Response> products({required int id}) {
    return _dio.post(
      Constants.apiGetHome,
      data: {
        "params": {
          "model": "stock.move.line",
          "method": "search_read",
          "args": [
            [
              ["picking_id", "=", id],
              ["is_validated_by_user", "=", false],
            ],
          ],
          "kwargs": {
            "fields": [
              "id",
              "product_id",
              "quantity",
              "lot_id",
              "location_id",
              "location_dest_id",
              "create_uid",
              "employee_id",
            ],
          },
        },
      },
    );
  }

  Future<Response> scanner({required String barcode, required int pickingId}) {
    return _dio.post(
      Constants.apiScanner,
      data: {
        "employeId": storage.employee_id.call(),
        "barcode": barcode,
        "pickingId": pickingId,
      },
    );
  }

  Future<Response> validation() {
    return _dio.post(
      Constants.apiValidation,
      data: {
        "employeeId": storage.employee_id.call(),
        "pickingId": storage.pickingId.call(),
      },
    );
  }

  Future<Response> userLogin({
    required String password,
    required String username,
  }) {
    return _dio.post(
      Constants.apiLogin,
      data: {"pin": password, "username": username},
    );
  }
}
