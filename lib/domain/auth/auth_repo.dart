import 'package:warhouse_qr_code/domain/model/get_line/get_line.dart';
import 'package:warhouse_qr_code/domain/model/get_plans/get_plans.dart';
import 'package:warhouse_qr_code/domain/model/products_list/products_list.dart';
import 'package:warhouse_qr_code/domain/model/stock_picking/stock_picking.dart';
import 'package:warhouse_qr_code/domain/model/warehouse/warehouse.dart';

abstract class AuthRepository {
  Future<void> register({
    required String email,
    required String confirmPassword,
    required String password,
    required String firstName,
    required String lastName,
  });

  Future<void> sentOtp({
    required String email,
  });
  Future<void> validate();
  Future<GetPlans> getPlans({required String state});
  Future<GetLine> getLine({required int id});

  Future<Warehouse> getHomeApi();
  Future<void> scanner({
    required String barcode,
    required int pickingId,
  });

  Future<List<StockPicking>> stockPicking({required int id});

  Future<ProductsList> products({required int id});


  Future<void> verifyOtp({
    required String email,
    required String otpText,
  });
  Future<void> userLogin({
    required String password,
    required String login,
  });
}
