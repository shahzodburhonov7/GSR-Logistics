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

  Future<Warehouse> getHomeApi();
  Future<void> scanner({
    required String barcode,
    required int pickingId,
  });

  Future<StockPicking> stockPicking({required int id});

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
