import 'package:warhouse_qr_code/common/base/base_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class Storage {
  Storage(this._box);

  final Box _box;

  @FactoryMethod(preResolve: true)
  static Future<Storage> create() async {
    await Hive.initFlutter();
    final box = await Hive.openBox('storage');
    return Storage(box);
  }

  BaseStorage<String> get token => BaseStorage(_box, 'token');
  BaseStorage<String> get userName => BaseStorage(_box, 'userName');
  BaseStorage<int> get employee_id => BaseStorage(_box, 'employee_id');
  BaseStorage<int> get pickingId => BaseStorage(_box, 'pickingId');

  BaseStorage<bool> get onboarded => BaseStorage(_box, 'onboarded');
  BaseStorage<List<int>> get warehouseIds =>
      BaseStorage<List<int>>(_box, 'warehouse_ids');
}